//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 26th, 2015
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[])
{
	@autoreleasepool {
		Logger *logger = [[Logger alloc] init];
		[[NSNotificationCenter defaultCenter] addObserverForName:NSSystemTimeZoneDidChangeNotification object:nil queue:nil usingBlock:^(NSNotification *note) {
			NSLog(@"The system time zone has changed!");
		}];
		NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
		NSURLRequest *request = [NSURLRequest requestWithURL:url];
		__used NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request delegate:logger startImmediately:YES];
		__used NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:logger selector:@selector(sayOuch:) userInfo:nil repeats:YES];
		[[NSRunLoop currentRunLoop] run];
	}
	return 0;
}