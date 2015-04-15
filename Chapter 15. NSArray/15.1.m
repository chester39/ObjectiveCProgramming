//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 21th, 2015
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
	@autoreleasepool {
		NSMutableArray *groceries = [NSMutableArray array];
		NSString *a = @"Book";
		NSString *b = @"Food";
		NSString *c = @"Music";
		[groceries addObject:a];
		[groceries addObject:b];
		[groceries addObject:c];
		NSLog(@"The groceries is:");
		for (NSString *s in groceries)
			NSLog(@"%@", s);
	}
    return 0;
}