//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 25th, 2015
//

#import <UIKit/UIKit.h>

NSString *docPath(void);

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>
{
	UITableView *taskTable;
	UITextField *taskField;
	UIButton *insertButton;
	NSMutableArray *tasks;
}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;
@property (nonatomic) NSMutableArray *tasks;

- (void)addTask:(id) sender;

@end