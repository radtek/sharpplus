//
//  CompareViewController.m
//  PriceMonitor
//
//  Created by hubdog on 3/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CompareViewController.h"
#import "CompareResultsModel.h"
#import "CompareResultsDataSource.h"

@implementation CompareViewController

@synthesize itemId = _itemId;

- (id)initWithItem:(NSString*)itemId {
	if (self = [super initWithNibName:@"CompareViewController" bundle:nil]) {
		
		self.itemId = itemId;
		
		self.title = [NSString stringWithFormat:@"Compare Price %@", itemId];
		self.navigationItem.backBarButtonItem =
		[[[UIBarButtonItem alloc] initWithTitle: @"Item List"
										  style: UIBarButtonItemStyleBordered
										 target: nil
										 action: nil] autorelease];		
		//		self.navigationItem.leftBarButtonItem =
		//		[[[UIBarButtonItem alloc] initWithTitle:@"Monitor List" style:UIBarButtonItemStyleBordered
		//										 target:self action:@selector(showMonitorList)] autorelease];
	}
	return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)viewDidLoad {
	[super viewDidLoad];
	
	//self.tableView.tableHeaderView = self.headerView;
	//self.tableView.tableFooterView = self.footerView;
}

- (void)createModel {
	//	NSString * nibString = nil;
	//	
	//	if (self.nibName) {
	//		nibString = [@"NIB: " stringByAppendingString:self.nibName];
	//		
	//	} else {
	//		nibString = @"Called without a NIB";
	//	}
	//	
	//	self.dataSource = [TTSectionedDataSource dataSourceWithObjects:
	//					   @"TTTableViewController",
	//					   [TTTableTextItem itemWithText:@"This demonstates a table"],
	//					   [TTTableTextItem itemWithText:nibString],
	//					   
	//					   nil];
	// Initialize our TTTableViewDataSource and our TTModel.
	id<TTTableViewDataSource> ds = [CompareResultsDataSource dataSourceWithItems:nil];
	ds.model = CreateCompareModelWithCurrentSettings();
	
	// By setting the dataSource property, the model property for this
	// class (SearchTableViewController) will automatically be hooked up 
	// to point at the same model that the dataSource points at, 
	// which we just instantiated above.
	self.dataSource = ds;

    [(id<CompareResultsModel>)self.model setItemId:self.itemId];
    [self reload];
    [self.tableView scrollToTop:YES];
	
}


///////////////////////////////////////////////////////////////////////////////////////////////////
-(void)dealloc {
	//TT_RELEASE_SAFELY(_headerView);
	[_itemId release];
	[super dealloc];
}


@end

