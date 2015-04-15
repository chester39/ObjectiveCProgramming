//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 21th, 2015
//

#import "Portfolio.h"
#import "StockHolding.h"

@interface Portfolio()

@end

@implementation Portfolio

@synthesize holdingStock;

- (void)addHoldingStock:(StockHolding *)s
{
	if (!holdingStock)
		holdingStock = [[NSMutableArray alloc] init];
	[holdingStock addObject:s];
}

- (float)totalValue
{
	float sum = 0.0;
	for (StockHolding *s in [self holdingStock])
		sum += [s valueInDollars];
	return sum;
}

-(NSString *)description
{
	for (StockHolding *s in holdingStock)
		NSLog(@"%@", s);
	return [NSString stringWithFormat:@"The value of your portfolio is %f$.", [self totalValue]];
}

@end