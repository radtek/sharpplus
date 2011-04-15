//
//  NotificationViewController.m
//  PriceMonitor
//
//  Created by hubdog on 4/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NotificationViewController.h"
#import "NotificationList.h"
#import "Utils.h"

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
	_bannerVisible =FALSE;
	//self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth  ;
	//	[self loadMonitorList];
	_bannerView = [[GADBannerView alloc] initWithFrame:CGRectMake(0, -50, GAD_SIZE_320x50.width, 
																  GAD_SIZE_320x50.height)];
	
	_bannerView.adUnitID = @"a14da56a6fd301d";
	_bannerView.rootViewController = self;
	//self.tableView.tableHeaderView = _bannerView;
	
	GADRequest* request = [GADRequest request];
	request.testing = YES;
	_bannerView.delegate = self;
	[_bannerView loadRequest:request];	
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

#pragma mark Banner Delegate
- (void)adViewDidReceiveAd:(GADBannerView *)view{
	NSLog(@"receive ad");
	if (!_bannerVisible){
		[UIView beginAnimations:@"BannerSlide" context:nil];
		_bannerView.frame = CGRectMake(0, 0, GAD_SIZE_320x50.width, 
								   GAD_SIZE_320x50.height);
		self.tableView.tableHeaderView = _bannerView;
		[UIView commitAnimations];
		_bannerVisible =TRUE;
	}
	
}

- (void)adView:(GADBannerView *)view
didFailToReceiveAdWithError:(GADRequestError *)error{
	NSLog(@"failed to receive the ad %@", [error localizedDescription]);
	//[Utils showAlert:@"test" msg:[error localizedDescription]];
}


-(void) dealloc{
	_bannerView.delegate = nil;
	[_bannerView release];
	
	[super dealloc];
}
@end

