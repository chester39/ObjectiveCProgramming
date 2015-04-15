//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 25th, 2015
//

#import <Cocoa/Cocoa.h>

@interface Document : NSDocument <NSTableViewDataSource>
{
	NSMutableArray *todoItems;
	IBOutlet NSTableView *itemTableView;
}

@property (nonatomic) NSMutableArray *todoItems;
@property (nonatomic) IBOutlet NSTableView *itemTableView;

- (IBAction)createNewItem:(id)sender;
- (IBAction)deleteItem:(id)sender;

@end