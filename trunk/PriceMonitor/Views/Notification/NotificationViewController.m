//
//  NotificationViewController.m
//  PriceMonitor
//
//  Created by hubdog on 4/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NotificationViewController.h"
#import "NotificationList.h"


@implementation NotificationViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
	if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]){
		self.title = @"通知";
		UIImage* image = [UIImage imageNamed:@"notification.png"];
		self.tabBarItem = [[[UITabBarItem alloc] initWithTitle:self.title image:image tag:0] autorelease];
		self.navigationItem.rightBarButtonItem =
		[[[UIBarButtonItem alloc] initWithTitle:@"クリア" style:UIBarButtonItemStyleBordered
										 target:self
										 action:@selector(clearAll:)] autorelease];
		//self.variableHeightRows = YES; 
	}
	
	return self;
}

-(id)addNotification:(NSString*)notification{
	if (self = [super init]){
		NotificationList* list = [NotificationList notificationList];
		[list addNotification:notification];
		[[(TTListDataSource*)self.dataSource items] addObject:notification];
		[self.tableView reloadData];
	}
	return self;
}

-(IBAction)clearAll:(id)sender{
	//[self.tableView setEditing:!self.tableView.editing animated:YES];
	NotificationList* list = [NotificationList notificationList];
	[list clear];
	[[(TTListDataSource*)self.dataSource items]  removeAllObjects];
	[self.tableView reloadData];	
	self.tabBarItem.badgeValue = nil;

}

- (void) loadNotificationList {

	NotificationList* list = [NotificationList notificationList];
	NSMutableArray* items = [[[NSMutableArray alloc] init] autorelease];
	for (NSInteger i=0; i< [list.itemArray count]; i++) {
		NSString* item = [list.itemArray objectAtIndex:i];
		TTTableTextItem* tableItem = [TTTableTextItem itemWithText:item];
//		MonitorTableItem* tableItem = [MonitorTableItem initItemWithMonitor:item url:url];
		[items addObject:tableItem];
	}
	
	self.dataSource = [TTListDataSource dataSourceWithItems:items];
}

- (void)viewDidLoad {
	[super viewDidLoad];
	//self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth  ;
	//	[self loadMonitorList];
}

- (void)viewWillAppear:(BOOL)animated{
	[super viewWillAppear:animated];
	
	NotificationList* list = [NotificationList notificationList];
	[list loadFromDb];
	[self loadNotificationList];	
	[self.tableView reloadData];
	
	if ([list.itemArray count])
		self.tabBarItem.badgeValue = [NSString stringWithFormat:@"%d", [list.itemArray count]];
	else
		self.tabBarItem.badgeValue = nil;
}

@end

