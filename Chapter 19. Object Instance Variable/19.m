//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 21th, 2015
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "ForeignStockHolding.h"
#import "Portfolio.h"

int main(int argc, const char * argv[])
{
	@autoreleasepool {
		StockHolding *stockA = [[StockHolding alloc] init];
		StockHolding *stockB = [[StockHolding alloc] init];
		ForeignStockHolding *stockC = [[ForeignStockHolding alloc] init];
		[stockA setPurchaseSharePrice:2.30];
		[stockA setCurrentSharePrice:4.50];
		[stockA setNumberOfShares:40];
		[stockB setPurchaseSharePrice:2.30];
		[stockB setCurrentSharePrice:4.50];
		[stockB setNumberOfShares:40];
		stockC.purchaseSharePrice = 2.30;
		stockC.currentSharePrice = 4.50;
		stockC.numberOfShares = 40;
		stockC.conversionRate = 0.94;
		Portfolio *holdings = [[Portfolio alloc] init];
		[holdings addHoldingStock:stockA];
		[holdings addHoldingStock:stockB];
		[holdings addHoldingStock:stockC];
		NSLog(@"%@" ,holdings);
	}
	return 0;
}