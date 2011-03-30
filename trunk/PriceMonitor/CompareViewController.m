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
#import "MonitorItem.h"

@implementation CompareViewController

@synthesize itemId = _itemId;
@synthesize action = _action;
@synthesize name = _name;
@synthesize result = _result;
@synthesize headerView = _headerView, product = _product , spec = _spec;

//- (id)initwithItem:(NSString*)action query:(NSDictionary*)query{
- (id)initWithAction:(NSString*)action query:(NSDictionary*)query  {
	if (self = [super initWithNibName:@"CompareViewController" bundle:nil]) {
		
		self.itemId = [query objectForKey:@"itemId"];
		self.result = [[query objectForKey:@"id"] intValue];
		
		if ([action isEqualToString:@"new"]){
			self.action = 0;
			SearchResult* rslt = (SearchResult*)self.result;
			self.name = rslt.title;
			
		}else{
			self.action = 1;
			MonitorItem* rslt = (MonitorItem*)self.result;
			self.name = rslt.name;
		}
		
		
		self.title = @"価格比較";
		
		self.navigationItem.backBarButtonItem =
		[[[UIBarButtonItem alloc] initWithTitle: @"モニター"
										  style: UIBarButtonItemStyleBordered
										 target: nil
										 action: nil] autorelease];	
		
		self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth  ;
										//| UIViewAutoresizingFlexibleHeight;  
		self.variableHeightRows = YES;  
	}
	return self;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)viewDidLoad {
	[super viewDidLoad];

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
	NSString* button =@"新規モニター";
		
	if (self.action==1){
		strAction=@"edit";
		button = @"編集モニター";
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
//	NSString* url = [NSString stringWithFormat:@"tt://monitorEdit?action=%@&itemId=%@&id=%d&price=%@&cmpId=%d", 
	NSString* url = [[NSString alloc] initWithFormat:@"tt://monitorEdit?action=%@&itemId=%@&id=%d&price=%@&cmpId=%d", 
					 strAction,self.itemId, self.result, strPrice, compare];
	self.navigationItem.rightBarButtonItem =
		[[[UIBarButtonItem alloc] initWithTitle:button 
								  style:UIBarButtonItemStyleBordered
								  target:url
								  action:@selector(openURLFromButton:)] autorelease];

	self.tableView.tableHeaderView = self.headerView;
	
	self.product.text = self.name;	
	
	CompareResult* rslt= [[(id<CompareResultsModel>)model results] objectAtIndex:0];
	if (rslt.spec){
		self.spec.text = rslt.spec;
	}else {
		self.spec.text = @"";
	}

}


///////////////////////////////////////////////////////////////////////////////////////////////////
-(void)dealloc {
	TT_RELEASE_SAFELY(_headerView);
	TT_RELEASE_SAFELY(_product);
	TT_RELEASE_SAFELY(_spec);
	
	[_itemId release];
	[super dealloc];
}


@end

