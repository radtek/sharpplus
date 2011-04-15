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
#import "MonitorTableItem.h"
#import "MonitorDataSource.h"
#import "PriceMonitorAppDelegate.h"


@implementation MonitorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
	if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]){
		self.title = @"モニター";
		UIImage* image = [UIImage imageNamed:@"monitor.png"];
		self.tabBarItem = [[[UITabBarItem alloc] initWithTitle:self.title image:image tag:0] autorelease];
		self.navigationItem.leftBarButtonItem =
		[[[UIBarButtonItem alloc] initWithTitle:@"更新" style:UIBarButtonItemStyleBordered
										 target:self
										 action:@selector(updatePrice:)] autorelease];
		
		
		self.navigationItem.rightBarButtonItem =
		[[[UIBarButtonItem alloc] initWithTitle:@"削除" style:UIBarButtonItemStyleBordered
										 target:self
										 action:@selector(toggleDelete:)] autorelease];
		self.variableHeightRows = YES; 
	}
				
	return self;
}
				
-(IBAction)toggleDelete:(id)sender{
	[self.tableView setEditing:!self.tableView.editing animated:YES];
}

-(IBAction)updatePrice:(id)sender{
	//[self.tableView setEditing:!self.tableView.editing animated:YES];
	PriceMonitorAppDelegate* delegate = (PriceMonitorAppDelegate*)[[UIApplication sharedApplication] delegate];
	delegate.updateMonitor = true;
	[self updateData];
}

- (void) loadMonitorList {
	//| UIViewAutoresizingFlexibleHeight;  	
	
	MonitorList* list = [MonitorList monitorList];
	NSMutableArray* items = [[[NSMutableArray alloc] init] autorelease];
	for (NSInteger i=0; i< [list.itemArray count]; i++) {
		NSMutableArray* details = [[[NSMutableArray alloc] init] autorelease];
		NSMutableArray* srcDetails = [list.itemArray objectAtIndex:i];
		for (NSInteger j=0; j<[srcDetails count]; j++) {
			MonitorItem* item = [srcDetails objectAtIndex:j];
			NSString* url = [NSString stringWithFormat:@"tt://compareItem?action=edit&itemId=%@&id=%d",item.itemId, item];
//			TTTableTextItem* tableItem = [TTTableTextItem itemWithText:item.name URL:url];
			MonitorTableItem* tableItem = [MonitorTableItem initItemWithMonitor:item url:url];
			[details addObject:tableItem];
		}
		[items addObject:details];
	}
	
	self.dataSource = [MonitorDataSource dataSourceWithItems:items sections:list.sectionArray];

}

- (void)viewDidLoad {
	[super viewDidLoad];
	_bannerVisible =FALSE;
	
	self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth  ;
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

- (void) updateData {
  MonitorList* list = [MonitorList monitorList];
	[list loadFromDb];
	[self loadMonitorList];	
	[self.tableView reloadData];

}
- (void)viewWillAppear:(BOOL)animated{
	[super viewWillAppear:animated];
	
	[self updateData];

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
		_bannerVisible = TRUE;
	}
	
}

- (void)adView:(GADBannerView *)view
didFailToReceiveAdWithError:(GADRequestError *)error{
	NSLog(@"failed to receive the ad %@", [error localizedDescription]);
}

-(void) dealloc{
	_bannerView.delegate = nil;
	[_bannerView release];
	[super dealloc];
}
@end

