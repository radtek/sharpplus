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
@synthesize action = _action;

//- (id)initwithItem:(NSString*)action query:(NSDictionary*)query{
- (id)initWithAction:(NSString*)action query:(NSDictionary*)query  {
	if (self = [super initWithNibName:@"CompareViewController" bundle:nil]) {
		
		self.itemId = [query objectForKey:@"itemId"];
		
		self.title = [NSString stringWithFormat:@"Compare Price %@", self.itemId];
		self.navigationItem.backBarButtonItem =
		[[[UIBarButtonItem alloc] initWithTitle: @"Item List"
										  style: UIBarButtonItemStyleBordered
										 target: nil
										 action: nil] autorelease];	
		if ([action isEqualToString:@"new"]){
			self.action = 0;
		}else{
			self.action = 1;
		}
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

- (void)modelDidFinishLoad:(id<TTModel>)model{
	//  if (self.modelState == TTModelStateNone) {
	//    self.title = @"None";
	//  } else if (self.modelState == TTModelStateLoading) {
	//    self.title = @"Loading";
	//if (self.modelState == TTModelStateLoaded) {
	[super modelDidFinishLoad:model];
	
		NSString* strAction= @"new";
		NSString* button =@"New Monitor";
		
		if (self.action==1){
			strAction=@"edit";
			button = @"Edit Monitor";
		}
		NSString* url = [[NSString alloc] initWithFormat:@"tt://monitorEdit?action=%@&itemId=%@&name=%@", strAction,self.itemId, @""];
		self.navigationItem.rightBarButtonItem =
		[[[UIBarButtonItem alloc] initWithTitle:button 
										  style:UIBarButtonItemStyleBordered
										 target:url
										 action:@selector(openURLFromButton:)] autorelease];
	//} 
	//else if (self.modelState == TTModelStateLoaded|TTModelStateReloading) {
	//    self.title = @"Reloading";
	//  } else if (self.modelState == TTModelStateLoadedError) {
	//    self.title = @"LoadedError";
	//  }
}

///////////////////////////////////////////////////////////////////////////////////////////////////
-(void)dealloc {
	//TT_RELEASE_SAFELY(_headerView);
	[_itemId release];
	[super dealloc];
}


@end

