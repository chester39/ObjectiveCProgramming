//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 21th, 2015
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

int main(int argc, const char * argv[])
{
	@autoreleasepool {
		StockHolding *stockA = [[StockHolding alloc] init];
		StockHolding *stockB = [[StockHolding alloc] init];
		StockHolding *stockC = [[StockHolding alloc] init];
		[stockA setPurchaseSharePrice:2.30];
		[stockA setCurrentSharePrice:4.50];
		[stockA setNumberOfShares:40];
		[stockB setPurchaseSharePrice:12.19];
		[stockB setCurrentSharePrice:10.56];
		[stockB setNumberOfShares:90];
		stockC.purchaseSharePrice = 45.10;
		stockC.currentSharePrice = 49.51;
		stockC.numberOfShares = 210;
		NSMutableArray *stockArray = [[NSMutableArray alloc] initWithObjects:stockA, stockB, stockC, nil];
		for (StockHolding *s in stockArray) {
			NSLog(@"Purchase price: %.2f$ \nCurrent price: %.2f$ \nNumber of Shares: %i \nCost in dollars: %.2f$ \nValue in dollars: %.2f$", s.purchaseSharePrice, s.currentSharePrice, s.numberOfShares, s.costInDollars, s.valueInDollars);
		}
	}
	return 0;
}