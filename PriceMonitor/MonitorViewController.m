//
//  MonitorViewController.m
//  PriceMonitor
//
//  Created by hubdog on 1/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MonitorViewController.h"


@implementation MonitorViewController


- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.title = @"Monitor";
	UIImage* image = [UIImage imageNamed:@"tab.png"];
	self.tabBarItem = [[[UITabBarItem alloc] initWithTitle:self.title image:image tag:0] autorelease];
	self.navigationItem.leftBarButtonItem =
    [[[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStyleBordered
									 target:@"tt://editmonitorlist"
									 action:@selector(openURLFromButton:)] autorelease];
	
    self.dataSource = [TTSectionedDataSource dataSourceWithObjects:
					   @"Computer",
					   [TTTableTextItem itemWithText:@"Mac" URL:@"tt://monitorEdit/1"],
					   [TTTableTextItem itemWithText:@"Thinkpad" URL:@"tt://monitorEdit/2"],
					   [TTTableTextItem itemWithText:@"Dell" URL:@"tt://monitorEdit/3"],
					   @"Game",
					   [TTTableTextItem itemWithText:@"PS3" URL:@"tt://monitorEdit/4"],
					   [TTTableTextItem itemWithText:@"Wii" URL:@"tt://monitorEdit/5"],
					   @"Other",
					   [TTTableTextItem itemWithText:@"Cannon" URL:@"tt://monitorEdit/6"],
					   [TTTableTextItem itemWithText:@"Philip" URL:@"tt://monitorEdit/7"],
					   nil];
	
}

@end

