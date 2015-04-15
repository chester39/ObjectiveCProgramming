//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 21th, 2015
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
	@autoreleasepool {
		NSDateComponents *comps = [[NSDateComponents alloc] init];
		[comps setYear:1991];
		[comps setMonth:3];
		[comps setDay:9];
		[comps setHour:17];
		[comps setMinute:39];
		[comps setSecond:19];
		NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
		NSDate *dateOfBirth = [g dateFromComponents:comps];
		NSDate *now = [NSDate date];
		double d = [now timeIntervalSinceDate:dateOfBirth];
		NSLog(@"I have been alive for %f seconds.", d);
	}
    return 0;
}