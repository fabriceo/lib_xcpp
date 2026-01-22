
// The user may define a larger kstack for their own worse case use.
#ifndef LIBXCORE_KSTACK_WORDS
#define LIBXCORE_KSTACK_WORDS 0
#endif

#define _XCORE_STRINGIFY_I(...) #__VA_ARGS__
#define _XCORE_STRINGIFY(_S) _XCORE_STRINGIFY_I(_S)

#define _XCORE_SINGLE_ISSUE   "ENTSP_lu6 0"
#define _XCORE_ENTSP_SIZE_STR(__n) #__n
#define _XCORE_ENTSP(__n)   "ENTSP_lu6 " _XCORE_ENTSP_SIZE_STR(__n)
#define _XCORE_CODE_ALIGNMENT   4
#define _XCORE_STACK_ALIGN_REQUIREMENT_WORDS 2
#define _XCORE_STACK_ALIGN(__n)   ((((__n)+1)/2)*2)

#define _XCORE_UNIQUE_LABEL_II(_BNAME, _CNT) _BNAME ## _CNT
#define _XCORE_UNIQUE_LABEL_I(_BNAME, _CNT) _XCORE_UNIQUE_LABEL_II(_BNAME, _CNT)
#define _XCORE_UNIQUE_LABEL(_BNAME) _XCORE_UNIQUE_LABEL_I(_BNAME, __COUNTER__)

#define _XCORE_INTERRUPT_PERMITTED(__root_function) \
    __xcore_interrupt_permitted_ugs_ ## __root_function

#define _XCORE_DECLARE_INTERRUPT_PERMITTED(__ret, __root_function, ...) \
    __ret _XCORE_INTERRUPT_PERMITTED(__root_function) (__VA_ARGS__);\
    __ret __root_function(__VA_ARGS__)

#define _XCORE_DEFINE_INTERRUPT_PERMITTED_I(__grp, __root_function, __interrupt_permitted, __sym_base) \
    asm( \
    ".weak _fptrgroup." __grp ".nstackwords.group \n" \
    ".max_reduce " __sym_base ".groupwords, _fptrgroup." __grp ".nstackwords.group, 0 \n" \
    /* Allocate an additional slot for the initial LR spill in the root function */ \
    ".set " __sym_base ", ((" __sym_base ".groupwords $M " _XCORE_STRINGIFY(LIBXCORE_KSTACK_WORDS) ") $A " _XCORE_STRINGIFY(_XCORE_STACK_ALIGN_REQUIREMENT_WORDS) ") + " _XCORE_STRINGIFY(_XCORE_STACK_ALIGN_REQUIREMENT_WORDS) " \n" \
    ".globl __xcore_interrupt_permitted_common \n" \
    ".globl " __interrupt_permitted " \n" \
    ".align " _XCORE_STRINGIFY(_XCORE_CODE_ALIGNMENT) " \n" \
    ".type " __interrupt_permitted ",@function \n" \
    ".cc_top " __interrupt_permitted ".function, " __interrupt_permitted " \n" \
    __interrupt_permitted ": \n" \
    "  " _XCORE_ENTSP(_XCORE_STACK_ALIGN(3)) " \n" \
    "  stw r5, sp[2] \n" \
    "  stw r4, sp[1] \n" \
    "  ldc r4, " __sym_base " \n" \
    "  ldap r11, " __root_function " \n" \
    "  add r5, r11, 0 \n"\
    "  ldap r11, __xcore_interrupt_permitted_common \n" \
    "  bau r11 \n" \
    ".cc_bottom " __interrupt_permitted ".function \n" \
    ".set " __interrupt_permitted ".nstackwords, " _XCORE_STRINGIFY(_XCORE_STACK_ALIGN(3)) " + " __sym_base " + __xcore_interrupt_permitted_common.nstackwords + " __root_function ".nstackwords  \n" \
    ".globl " __interrupt_permitted ".nstackwords \n" \
    ".set " __interrupt_permitted ".maxcores, 1 $M __xcore_interrupt_permitted_common.maxcores $M " __root_function ".maxcores \n" \
    ".globl " __interrupt_permitted ".maxcores \n" \
    ".set " __interrupt_permitted ".maxtimers, 0 $M __xcore_interrupt_permitted_common.maxtimers $M " __root_function ".maxtimers \n" \
    ".globl " __interrupt_permitted ".maxtimers \n" \
    ".set " __interrupt_permitted ".maxchanends, 0 $M __xcore_select_callback_common.maxchanends $M " __root_function ".maxchanends \n" \
    ".globl " __interrupt_permitted ".maxchanends \n" \
    ".size " __interrupt_permitted ", . - " __interrupt_permitted " \n" \
    )

#define _XCORE_DEFINE_INTERRUPT_PERMITTED(__grp, __ret, __root_function, ...) \
    _XCORE_DEFINE_INTERRUPT_PERMITTED_I(_XCORE_STRINGIFY(__grp), _XCORE_STRINGIFY(__root_function), \
                                        _XCORE_STRINGIFY(_XCORE_INTERRUPT_PERMITTED(__root_function)), \
                                        _XCORE_STRINGIFY(_XCORE_UNIQUE_LABEL(__xcore_interrupt_permitted_kstackwords))); \
    __ret _XCORE_INTERRUPT_PERMITTED(__root_function) (__VA_ARGS__); \
    __ret __root_function(__VA_ARGS__)

#define _XCORE_INTERRUPT_CALLBACK(__intrpt) \
    __xcore_interrupt_callback_ ## __intrpt

#define _XCORE_DECLARE_INTERRUPT_CALLBACK(__intrpt, __data) \
    void _XCORE_INTERRUPT_CALLBACK(__intrpt)(void);\
    void __intrpt(void* __data)

#define _XCORE_DEFINE_INTERRUPT_CALLBACK_DEF(__grp, __root_function, __intrpt) \
    asm( \
    ".globl __xcore_interrupt_callback_common \n"\
    ".weak _fptrgroup." __grp ".nstackwords.group \n" \
    ".add_to_set _fptrgroup." __grp ".nstackwords.group, " __intrpt ".nstackwords, " __intrpt " \n" \
    ".globl " __intrpt " \n" \
    ".align " _XCORE_STRINGIFY(_XCORE_CODE_ALIGNMENT) " \n" \
    ".type " __intrpt ",@function \n" \
    ".cc_top " __intrpt ".function," __intrpt " \n" \
    __intrpt ": \n" \
    "  " _XCORE_SINGLE_ISSUE " \n" /* Do we know what KEDI is set to? */ \
    "  kentsp " _XCORE_STRINGIFY(_XCORE_STACK_ALIGN(7)) " \n" \
    "  stw r11, sp[5] \n" \
    "  stw r1, sp[3] \n" \
    "  ldap r11, " __root_function " \n" \
    "  add r1, r11, 0 \n"\
    "  ldap r11, __xcore_interrupt_callback_common \n"\
    "  bau r11 \n"\
    ".cc_bottom " __intrpt ".function \n" \
    ".set " __intrpt ".nstackwords, " _XCORE_STRINGIFY(_XCORE_STACK_ALIGN(7)) " + __xcore_interrupt_callback_common.nstackwords + " __root_function ".nstackwords \n" \
    ".globl " __intrpt ".nstackwords \n" \
    ".set " __intrpt ".maxcores, 1 $M __xcore_interrupt_callback_common.maxcores $M " __root_function ".maxcores \n" \
    ".globl " __intrpt ".maxcores \n" \
    ".set " __intrpt ".maxtimers, 0 $M __xcore_interrupt_callback_common.maxtimers $M " __root_function ".maxtimers \n" \
    ".globl " __intrpt ".maxtimers \n" \
    ".set " __intrpt ".maxchanends, 0 $M __xcore_interrupt_callback_common.maxchanends $M " __root_function ".maxchanends  \n" \
    ".globl " __intrpt ".maxchanends \n" \
    ".size " __intrpt ", . - " __intrpt " \n" \
    )

#define _XCORE_DEFINE_INTERRUPT_CALLBACK(__grp, __intrpt, __data) \
    _XCORE_DEFINE_INTERRUPT_CALLBACK_DEF(_XCORE_STRINGIFY(__grp), _XCORE_STRINGIFY(__intrpt), \
                                         _XCORE_STRINGIFY(_XCORE_INTERRUPT_CALLBACK(__intrpt)) ); \
    _XCORE_DECLARE_INTERRUPT_CALLBACK(__intrpt, __data)

#define DEFINE_INTERRUPT_PERMITTED(__group, __ret, __root_function, ...) \
        _XCORE_DEFINE_INTERRUPT_PERMITTED(__group, __ret, __root_function, __VA_ARGS__)

#define DECLARE_INTERRUPT_PERMITTED(__ret, __root_function, ...) \
        _XCORE_DECLARE_INTERRUPT_PERMITTED(__ret, __root_function, __VA_ARGS__)

#define INTERRUPT_PERMITTED(__root_function) _XCORE_INTERRUPT_PERMITTED(__root_function)

#define DEFINE_INTERRUPT_CALLBACK(__group, __intrpt, __data) \
        _XCORE_DEFINE_INTERRUPT_CALLBACK(__group, __intrpt, __data)

#define DECLARE_INTERRUPT_CALLBACK(__intrpt, __data) \
        _XCORE_DECLARE_INTERRUPT_CALLBACK(__intrpt, __data)

#define INTERRUPT_CALLBACK(__intrpt) _XCORE_INTERRUPT_CALLBACK(__intrpt)

/*
<__xcore_interrupt_permitted_common>:
             0x000803bc: c0 66:       ldaw (ru6)      r11, sp[0x0]
             0x000803be: 7c fc ec 27: ldaw (l3r)      r11, r11[-r4]
             0x000803c2: c0 56:       stw (ru6)       r11, sp[0x0]
             0x000803c4: 00 65:       ldaw (ru6)      r4, sp[0x0]
             0x000803c6: 00 f0 c0 7b: krestsp (lu6)   0x0
             0x000803ca: e5 27:       bla (1r)        r5
             0x000803cc: f4 2f:       set (1r)        sp, r4
             0x000803ce: 01 5d:       ldw (ru6)       r4, sp[0x1]
             0x000803d0: 42 5d:       ldw (ru6)       r5, sp[0x2]
             0x000803d2: c4 77:       retsp (u6)      0x4

<__xcore_interrupt_callback_common>:
             0x000803d4: c6 57:       stw (ru6)       lr, sp[0x6]
             0x000803d6: 04 54:       stw (ru6)       r0, sp[0x4]
             0x000803d8: 82 54:       stw (ru6)       r2, sp[0x2]
             0x000803da: c1 54:       stw (ru6)       r3, sp[0x1]
             0x000803dc: fe 0f:       get (0r)        r11, ed
             0x000803de: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000803e0: e1 27:       bla (1r)        r1
             0x000803e2: c1 5c:       ldw (ru6)       r3, sp[0x1]
             0x000803e4: 82 5c:       ldw (ru6)       r2, sp[0x2]
             0x000803e6: 43 5c:       ldw (ru6)       r1, sp[0x3]
             0x000803e8: 04 5c:       ldw (ru6)       r0, sp[0x4]
             0x000803ea: c5 5e:       ldw (ru6)       r11, sp[0x5]
             0x000803ec: c6 5f:       ldw (ru6)       lr, sp[0x6]
             0x000803ee: 00 f0 c8 7b: krestsp (lu6)   0x8
             0x000803f2: ec ff ec 07: kret (l0r)      
             0x000803f6: 00 00:       stw (2rus)      r0, r0[0x0]

__builtin_assume(condition) : compiler assume that the given condition is always true.
__builtin_expect(exp, val) : tell compiler that the given expression will be either true or false to help optimizing
__builtin_constant_p(exp) : 1 (true) if the compiler can determine that the expression is a constant during compilation

member void x() const {} -> does not modify memeber

__attribute__((dual_issue)) function
*/

#if 0
static inline void example() {


uint32_t t0; // Start time when triggering ISR

DEFINE_INTERRUPT_CALLBACK(test_isr_grp, isr_handler, app_data)
{
    printf("isr (%lu)\n", get_reference_time() - t0);
    chanend_t *isr_data = app_data;

    chanend_in_byte(*isr_data);
}


DECLARE_JOB(INTERRUPT_PERMITTED(task1), (chanend_t));
DEFINE_INTERRUPT_PERMITTED (test_isr_grp, void, task1, chanend_t c_isr)
{
    hwtimer_t tmr2 = hwtimer_alloc();

    const uint32_t time2_inc = XS1_TIMER_MHZ * 500;

    uint32_t time2 = hwtimer_get_time(tmr2) + time2_inc;

    hwtimer_set_trigger_time(tmr2, time2);


    triggerable_setup_interrupt_callback(c_isr, &c_isr, INTERRUPT_CALLBACK(isr_handler));
    triggerable_enable_trigger(c_isr);
    interrupt_unmask_all();

    SELECT_RES(
        CASE_THEN(tmr2, tmr2_event)    )
    {
        tmr2_event:
        {
            printf("tmr2 event\n");
            time2 += time2_inc;
            hwtimer_set_trigger_time(tmr2, time2);

        }
        continue;

    }
}

DECLARE_JOB(task2, (chanend_t));
void task2(chanend_t c_isr)
{
    hwtimer_t tmr = hwtimer_alloc();

    const uint32_t time_inc = XS1_TIMER_MHZ * 1000;

    while(1)
    {
        hwtimer_delay(tmr, time_inc);
        t0 = get_reference_time();
        chanend_out_byte(c_isr, 0);
    }
}

int main(void)
{
    channel_t c_isr = chan_alloc();

    PAR_JOBS(
        PJOB(INTERRUPT_PERMITTED(task1), (c_isr.end_a)),
        PJOB(task2, (c_isr.end_b))
    );

    return 0;
}

}

#endif