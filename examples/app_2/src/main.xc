#include <xs1.h>
#include <platform.h>

#ifdef XSCOPE
#include <xscope.h>
void xscope_user_init() {
    xscope_register(0, 0, "", 0, "");
    xscope_config_io(XSCOPE_IO_BASIC);
}
#endif

//from app2.cpp
void main0(chanend c);
void main1(chanend c);

void main01();

int main() {
    chan c;
    par { 
        on tile[0] : par { 
            main0(c);
        }
        on tile[1] : par {
            main1(c);
        }

    }
    return 0;
}