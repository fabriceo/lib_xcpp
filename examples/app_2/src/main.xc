#include <xs1.h>
#include <platform.h>

void main0(chanend c);
void main1(chanend c);

int main() {
    chan c;
    par { 
        on tile[0] : { 
            main0(c);
        }
        on tile[1] : {
            main1(c);
        }

    }
    return 0;
}