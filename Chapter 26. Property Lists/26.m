//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 24th, 2015
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
	@autoreleasepool {
		NSMutableArray *myArray = [[NSMutableArray alloc] init];
		NSString *string = @"Hello";
		NSArray *arrayA = [NSArray arrayWithObjects:string, nil];
		[myArray addObject:arrayA];
		NSMutableDictionary *dictionaryB = [NSMutableDictionary dictionary];
		[dictionaryB setObject:@"WE" forKey:@"are"];
		[myArray addObject:dictionaryB];
		NSString *stringC = @"Your";
		[myArray addObject:stringC];
		NSData *dataD = [[NSData alloc] initWithContentsOfFile:@"/desktop/Chester/显卡天梯图.txt"];
		[myArray addObject:dataD];
		NSDate *dateE = [NSDate date];
		[myArray addObject:dateE];
		NSNumber *numberF = [NSNumber numberWithInt:39];
		[myArray addObject:numberF];
		NSNumber *numberG = [NSNumber numberWithFloat:1.19];
		[myArray addObject:numberG];
		NSNumber *numberH = [NSNumber numberWithBool:YES];
		[myArray addObject:numberH];
		[myArray writeToFile:@"/tmp/myArray.plist" atomically:YES];
	}
	return 0;
}