//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 22nd, 2015
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject
{
	float purchaseSharePrice;
	float currentSharePrice;
	int numberOfShares;
}

@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;

- (float)costInDollars;
- (float)valueInDollars;

@end