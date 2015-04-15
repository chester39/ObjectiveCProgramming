//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 20th, 2015
//

#include <stdio.h>
#include <limits.h>

int main(int argc, char *argv[])
{
	float i = 3.0;
	printf("A float is %zu bytes\n", sizeof(i));
	printf("Max short is %d\n", SHRT_MAX);
	printf("Min short is %d\n", SHRT_MIN);
	printf("Max unsigned short is %u\n", USHRT_MAX);
	return 0;
}