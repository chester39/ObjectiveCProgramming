//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 22nd, 2015
//

#import "StockHolding.h"

@interface StockHolding()

@end

@implementation StockHolding

@synthesize purchaseSharePrice, currentSharePrice, numberOfShares;

- (float)costInDollars
{
	return [self purchaseSharePrice] * [self numberOfShares];
}

- (float)valueInDollars
{
	return currentSharePrice * numberOfShares;
}

@end