
#include <platform.h>
#include "debug_print.h"

extern void tile0_task1();
extern void tile0_task2();
extern void tile1_task1();
extern void tile1_task2();


int main(unsigned argc, char * unsafe argv[argc]) {

par {
    on tile[0] : {
        tile0_task1();
    }
    on tile[0] : tile0_task2();

    on tile[1] : tile1_task1();
    on tile[1] : tile1_task2();
}
    return 0;
};
