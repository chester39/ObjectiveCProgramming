//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 20th, 2015
//

#include <stdio.h>

int main(int argc, char *argv[])
{
	int i;
	for (i = 99; i >= 0; i -= 3) {
		printf("%d\n", i);
		if (i % 5 == 0)
			printf("Found on!\n");
	}
    return 0;
}