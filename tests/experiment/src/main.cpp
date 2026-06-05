
#include <platform.h>
#include <stdio.h>

extern void initPort();

int main(int argc, char * argv[]) {


    for (int x = 0; x < argc; x++)
		printf("Arg %d %s\n", x, argv[x]);

    initPort();

    return 0;
};
