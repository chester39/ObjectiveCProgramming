//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 20th, 2015
//

#include <stdio.h>

int main(int argc, char *argv[])
{
	int i = 20;
	int j = 25;
	int k = (i > j) ? 10 : 5;
	if (5 < j - k) {
		printf("The first expression is true.");
	} else if (j > i) {
		printf("The second expression is true.");
	} else {
		printf("Neither expression is true.");
	}
    return 0;
}