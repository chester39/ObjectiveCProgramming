//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 21st, 2015
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
	@autoreleasepool {
		NSTimeZone *myTimeZone = [[NSTimeZone alloc] init];
		myTimeZone = [NSTimeZone systemTimeZone];
		BOOL isDayLight = [myTimeZone isDaylightSavingTime];
		if (isDayLight == YES)
			NSLog(@"My time zone is day light.");
		else
			NSLog(@"My time zone is not day light.");
	}
    return 0;
}