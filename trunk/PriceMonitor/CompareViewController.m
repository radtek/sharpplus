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
#import "SearchResult.h"
#import "CompareResult.h"

@implementation CompareViewController

@synthesize itemId = _itemId;
@synthesize action = _action;
@synthesize name = _name;
@synthesize result = _result;

//- (id)initwithItem:(NSString*)action query:(NSDictionary*)query{
- (id)initWithAction:(NSString*)action query:(NSDictionary*)query  {
	if (self = [super initWithNibName:@"CompareViewController" bundle:nil]) {
		
		self.itemId = [query objectForKey:@"itemId"];
		self.result = [[query objectForKey:@"id"] intValue];
		SearchResult* rslt = (SearchResult*)self.result;
		
		self.title = [NSString stringWithFormat:@"Compare Price %@", rslt.title];
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
	// Initialize our TTTableViewDataSource and our TTModel.
	id<TTTableViewDataSource> ds = [CompareResultsDataSource dataSourceWithItems:nil];
	ds.model = CreateCompareModelWithCurrentSettings();
	
	// By setting the dataSource property, the model property for this
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
	//get the lowest price
	NSString* strPrice= @"0";
	
	NSArray* results = [(id<CompareResultsModel>)self.model results];
	CompareResult*	compare = nil;
	if ( [results count]> 0){
		compare = (CompareResult*)[results objectAtIndex:0];
		//remove ¥ and ,
		strPrice= [compare.price stringByReplacingOccurrencesOfString:@"¥" withString:@""];
		strPrice = [strPrice stringByReplacingOccurrencesOfString:@"," withString:@""];
	}
	NSString* url = [[NSString alloc] initWithFormat:@"tt://monitorEdit?action=%@&itemId=%@&id=%d&price=%@&cmpId=%d", 
					 strAction,self.itemId, self.result, strPrice, compare];
	self.navigationItem.rightBarButtonItem =
		[[[UIBarButtonItem alloc] initWithTitle:button 
								  style:UIBarButtonItemStyleBordered
								  target:url
								  action:@selector(openURLFromButton:)] autorelease];
}

///////////////////////////////////////////////////////////////////////////////////////////////////
-(void)dealloc {
	//TT_RELEASE_SAFELY(_headerView);
	[_itemId release];
	[super dealloc];
}


@end

