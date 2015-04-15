//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 20th, 2015
//

#include <stdio.h>
#include <time.h>

int main(int argc, char *argv[])
{
	long futureTime = time(NULL) + 4000000;
	struct tm future;
	localtime_r(&futureTime, &future);
	printf("The time after 4 million seconds is %d - %d - %d\n", future.tm_mon + 1, future.tm_mday, future.tm_year + 1900);
	return 0;
}