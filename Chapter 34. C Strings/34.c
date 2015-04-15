//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 26th, 2015
//

#include <stdio.h>
#include <string.h>

int spaceCount(const char *s)
{
	unsigned long length = strlen(s);
	int count = 0;
	int i = 0;
	for (; i < length; ++i) {
		if (s[i] == 0x20)
			++count;
	}
	return count;
}

int main(int argc, char *argv[])
{
	const char *sentence = "He was not in the cab at the time.";
	printf("\"%s\" has %d spaces\n", sentence, spaceCount(sentence));
	return 0;
}