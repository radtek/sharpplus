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
#import "MonitorDataSource.h"


@implementation MonitorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
	if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]){
		self.title = @"Monitor";
		UIImage* image = [UIImage imageNamed:@"tab.png"];
		self.tabBarItem = [[[UITabBarItem alloc] initWithTitle:self.title image:image tag:0] autorelease];
		self.navigationItem.rightBarButtonItem =
		[[[UIBarButtonItem alloc] initWithTitle:@"Delete" style:UIBarButtonItemStyleBordered
										 target:self
										 action:@selector(toggleDelete:)] autorelease];
	}
				
	return self;
}
				
-(IBAction)toggleDelete:(id)sender{
	[self.tableView setEditing:!self.tableView.editing animated:YES];
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	MonitorList* list = [MonitorList monitorList];
	NSMutableArray* items = [[NSMutableArray alloc] initWithCapacity:100];
	for (NSInteger i=0; i< [list.itemArray count]; i++) {
		NSMutableArray* details = [[NSMutableArray alloc] initWithCapacity:100];
		NSMutableArray* srcDetails = [list.itemArray objectAtIndex:i];
		for (NSInteger j=0; j<[srcDetails count]; j++) {
			MonitorItem* item = [srcDetails objectAtIndex:j];
			NSString* url = [[NSString alloc] initWithFormat:@"tt://compareItem?action=edit&itemId=%@&id=%d",item.itemId, item];
			TTTableTextItem* tableItem = [TTTableTextItem itemWithText:item.name URL:url];
			[details addObject:tableItem];
		}
		[items addObject:details];
	}
	
	self.dataSource = [MonitorDataSource dataSourceWithItems:items sections:list.sectionArray];
}

@end

