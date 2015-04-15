//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 26th, 2015
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
	@autoreleasepool {
		NSArray *oldStrings = [NSArray arrayWithObjects:@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi", nil];
		NSLog(@"Old strings: %@", oldStrings);
		NSMutableArray *newStrings = [NSMutableArray array];
		NSArray *vowels = [NSArray arrayWithObjects:@"a", @"e", @"i", @"o", @"u", nil];
		[oldStrings enumerateObjectsUsingBlock:^(id string, NSUInteger i, BOOL *stop) {
			NSMutableString *newString = [NSMutableString stringWithString:string];
			for (NSString *s in vowels) {
				NSRange fullRange = NSMakeRange(0, [newString length]);
				[newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
			}
			[newStrings addObject:newString];
		}];
		NSLog(@"New strings: %@", newStrings);
	}
	return 0;
}