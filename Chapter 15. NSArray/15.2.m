//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 21th, 2015
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
	@autoreleasepool {
		NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
		NSArray *names = [nameString componentsSeparatedByString:@"\n"];
		NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
		NSArray *words = [wordString componentsSeparatedByString:@"\n"];
		for (NSString *n in names)
			for (NSString *w in words)
				if ([w caseInsensitiveCompare:n] == NSOrderedSame)
					NSLog(@"%@", n);
	}
    return 0;
}