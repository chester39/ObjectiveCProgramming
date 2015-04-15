//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 21th, 2015
//

#import <Foundation/Foundation.h>
@class StockHolding;

@interface Portfolio : NSObject
{
	NSMutableArray *holdingStock;
}

@property NSArray *holdingStock;

- (void)addHoldingStock:(StockHolding *)s;
- (float)totalValue;

@end