//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 21th, 2015
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
	@autoreleasepool {
		NSHost *myHost = [[NSHost alloc] init];
		NSString *myComputer = [[NSString alloc] init];
		myHost = [NSHost currentHost];
		myComputer = [myHost localizedName];
		NSLog(@"My Computer name is %@", myComputer);
	}
    return 0;
}