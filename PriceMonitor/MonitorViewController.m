//
//  MonitorViewController.m
//  PriceMonitor
//
//  Created by hubdog on 1/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MonitorViewController.h"
#import "MonitorList.h"
#import "MonitorItem.h"


@implementation MonitorViewController


- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.title = @"Monitor";
	UIImage* image = [UIImage imageNamed:@"tab.png"];
	self.tabBarItem = [[[UITabBarItem alloc] initWithTitle:self.title image:image tag:0] autorelease];
	self.navigationItem.leftBarButtonItem =
    [[[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStyleBordered
									 target:@"tt://monitorEdit?action=new&item=123"
									 action:@selector(openURLFromButton:)] autorelease];
	MonitorList* list = [MonitorList monitorList];
	NSMutableArray* items = [[NSMutableArray alloc] initWithCapacity:100];
	for (NSInteger i=0; i< [list.itemArray count]; i++) {
		NSMutableArray* details = [[NSMutableArray alloc] initWithCapacity:100];
		NSMutableArray* srcDetails = [list.itemArray objectAtIndex:i];
		for (NSInteger j=0; j<[srcDetails count]; j++) {
			MonitorItem* item = [srcDetails objectAtIndex:j];
			NSString* url = [[NSString alloc] initWithFormat:@"tt://compareItem?action=edit&itemId=%@",item.itemId];
			TTTableTextItem* tableItem = [TTTableTextItem itemWithText:item.name URL:url];
			[details addObject:tableItem];
		}
		[items addObject:details];
	}
	
	self.dataSource = [TTSectionedDataSource dataSourceWithItems:items sections:list.sectionArray];
}

@end

