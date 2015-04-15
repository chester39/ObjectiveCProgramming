//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 20th, 2015
//

#include <stdio.h>

float remainingAngle(float a, float b)
{
	float c = 180 - a - b;
	return c;
}

int main(int argc, char *argv[])
{
	float angleA = 30.0;
	float angleB = 60.0;
	float angleC = remainingAngle(angleA, angleB);
	printf("The third angle is %.2f\n", angleC);
    return 0;
}