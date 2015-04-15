//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 25th, 2015
//

#import "Document.h"

@interface Document()

@end

@implementation Document

#pragma mark NSDocument的覆盖方法

- (id)init
{
	self = [super init];
	if (self)
		;
	return self;
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
	[super windowControllerDidLoadNib:aController];
}

+ (BOOL)autosavesInPlace
{
	return YES;
}

- (NSString *)windowNibName
{
	return @"Document";
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
	if (!todoItems)
		todoItems = [NSMutableArray array];
	NSData *data = [NSPropertyListSerialization dataWithPropertyList:todoItems format:NSPropertyListXMLFormat_v1_0 options:0 error:outError];
	return data;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
	todoItems = [NSPropertyListSerialization propertyListWithData:data options:NSPropertyListMutableContainers format:NULL error:outError];
	return (todoItems != nil);
}

#pragma mark 动作方法

- (IBAction)createNewItem:(id)sender
{
	if (!todoItems)
		todoItems = [NSMutableArray array];
	[todoItems addObject:@"New Item"];
	[itemTableView reloadData];
	[self updateChangeCount:NSChangeDone];
}

- (IBAction)deleteItem:(id)sender
{
	if (!todoItems) {
		NSLog(@"No items to delete yet");
		return;
	}
	NSIndexSet *selectedRows = [itemTableView selectedRowIndexes];
	[todoItems removeObjectsAtIndexes:selectedRows];
	[itemTableView reloadData];
	[self updateChangeCount:NSChangeDone];
}

#pragma mark 数据源方法

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tv
{
	return [todoItems count];
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
	return [todoItems objectAtIndex:row];
}

- (void)tableView:(NSTableView *)tableView setObjectValue:(id)object forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
	[todoItems replaceObjectAtIndex:row withObject:object];
	[self updateChangeCount:NSChangeDone];
}

@end