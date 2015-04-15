//
//	Objective-C Programming: The Big Nerd Ranch Guide
//		Aaron Hillegass
//		Chen Chen @ March 25th, 2015
//

#import "AppDelegate.h"

@interface AppDelegate()

@end

NSString *docPath()
{
	NSArray *pathList = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	return [[pathList objectAtIndex:0] stringByAppendingPathComponent:@"data.td"];
}

@implementation AppDelegate

#pragma mark 应用委托对象的回调方法

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	NSArray *plist = [NSArray arrayWithContentsOfFile:docPath()];
	if (plist)
		tasks = [plist mutableCopy];
	else
		tasks = [[NSMutableArray alloc] init];
	if ([tasks count] == 0) {
		[tasks addObject:@"Do iOS programming"];
		[tasks addObject:@"Do C programming"];
		[tasks addObject:@"Do C++ programming"];
		[tasks addObject:@"Do JavaScript programming"];
	}
	CGRect windowFrame = [[UIScreen mainScreen] bounds];
	UIWindow *theWindow = [[UIWindow alloc] initWithFrame:windowFrame];
	[self setWindow:theWindow];
	CGRect tableFrame = CGRectMake(0, 80, 320, 380);
	CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
	CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
	taskTable = [[UITableView alloc] initWithFrame:tableFrame style:UITableViewStylePlain];
	[taskTable setSeparatorStyle:UITableViewCellSeparatorStyleNone];
	[taskTable setDataSource:self];
	[taskTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
	taskField = [[UITextField alloc] initWithFrame:fieldFrame];
	[taskField setBorderStyle:UITextBorderStyleRoundedRect];
	[taskField setPlaceholder:@"Insert your todo list!"];
	insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[insertButton setFrame:buttonFrame];
	[insertButton addTarget:self action:@selector(addTask:) forControlEvents:UIControlEventTouchUpInside];
	[insertButton setTitle:@"Insert" forState:UIControlStateNormal];
	[[self window] addSubview:taskTable];
	[[self window] addSubview:taskField];
	[[self window] addSubview:insertButton];
	[[self window] setBackgroundColor:[UIColor whiteColor]];
	[[self window] makeKeyAndVisible];
	return YES;
}

#pragma mark 动作

- (void)addTask:(id)sender
{
	NSString *t = [taskField text];
	if ([t isEqualToString:@""])
		return;
	[tasks addObject:t];
	[taskTable reloadData];
	[taskField setText:@""];
	[taskField resignFirstResponder];
}

#pragma mark 管理表格视图

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [tasks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell *c = [taskTable dequeueReusableCellWithIdentifier:@"Cell"];
//	if (!c)
//		c = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault];
	NSString *item = [tasks objectAtIndex:[indexPath row]];
	[[c textLabel] setText:item];
	return c;
}

#pragma mark 保存数据

- (void)applicationDidEnterBackground:(UIApplication *)application
{
	[tasks writeToFile:docPath() atomically:YES];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	[tasks writeToFile:docPath() atomically:YES];
}

- (void)applicationWillResignActive:(UIApplication *)application
{

}

- (void)applicationWillEnterForeground:(UIApplication *)application
{

}

- (void)applicationDidBecomeActive:(UIApplication *)application
{

}

@end