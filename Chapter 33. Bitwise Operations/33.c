//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 26th, 2015
//

#include <stdio.h>

int main(int argc, char *argv[])
{
	uint64_t a = UINT64_MAX;
	uint64_t b = 1;
	uint64_t c = 6148914691236517205;
	for (int i = 0; i < 64; i += 2) {
		a = a ^ (b << i);
		if (i == 62 & a == c) {
			printf("Success!\n");
		} else if(i == 62 & ~a == c) {
			printf("Success!\n");
		}
	}
	return 0;
}