//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 22nd, 2015
//

#import "ForeignStockHolding.h"

@interface ForeignStockHolding()

@end

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float)costInDollars
{
	return [self purchaseSharePrice] * [self conversionRate] * [self numberOfShares];
}

-(float)valueInDollars
{
	return currentSharePrice * conversionRate * numberOfShares;
}

@end