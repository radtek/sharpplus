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

@synthesize itemId = _itemId, price=_price, category=_category;
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
	self.price= @"0";
	self.category =@"その他";
	
	NSArray* results = [(id<CompareResultsModel>)self.model results];
	CompareResult*	compare = nil;
	self.spec.text = @"";
	if ( [results count]> 0){
		compare = (CompareResult*)[results objectAtIndex:0];
		//remove ¥ and ,
		self.price= [compare.price stringByReplacingOccurrencesOfString:@"¥" withString:@""];
		self.price = [self.price stringByReplacingOccurrencesOfString:@"," withString:@""];
		self.category = compare.category;
		if (compare.spec){
			self.spec.text = compare.spec;
		}	
		
		NSString* url = [[NSString alloc] initWithFormat:@"tt://monitorEdit?action=%@&id=%d", 
						 strAction,self];
		self.navigationItem.rightBarButtonItem =
		[[[UIBarButtonItem alloc] initWithTitle:button 
										  style:UIBarButtonItemStyleBordered
										 target:url
										 action:@selector(openURLFromButton:)] autorelease];
	}else {
		self.spec.text = @"価格情報の登録がありません";
	}
	
	//
	_bannerView = [[GADBannerView alloc] initWithFrame:CGRectMake(0, -50, GAD_SIZE_320x50.width, 
																  GAD_SIZE_320x50.height)];
	
	_bannerView.adUnitID = @"a14da56a6fd301d";
	_bannerView.rootViewController = self;
	[self.headerView addSubview:_bannerView];
	
	
	[self.headerView addSubview:_bannerView];

	self.tableView.tableHeaderView = self.headerView;
	
	self.product.text = self.name;	
	
	GADRequest* request = [GADRequest request];
	request.testing = YES;
	_bannerView.delegate = self;
	[_bannerView loadRequest:request];
	
}

-(void)setEditAction{
	self.action = 1;
	NSString* url = [[NSString alloc] initWithFormat:@"tt://monitorEdit?action=%@&id=%d", 
					 @"edit",self];
	
	self.navigationItem.rightBarButtonItem =
	[[[UIBarButtonItem alloc] initWithTitle:@"編集モニター" 
									  style:UIBarButtonItemStyleBordered
									 target:url
									 action:@selector(openURLFromButton:)] autorelease];
}

#pragma mark Banner Delegate
- (void)adViewDidReceiveAd:(GADBannerView *)view{
	NSLog(@"receive ad");
	[UIView beginAnimations:@"BannerSlide" context:nil];
	CGRect newFrame =self.headerView.frame;
	_bannerView.frame = CGRectMake(0, newFrame.size.height+1, GAD_SIZE_320x50.width, 
								   GAD_SIZE_320x50.height);
	newFrame.size.height += GAD_SIZE_320x50.height;
	
	self.headerView.frame = newFrame;
	
	[self.tableView setTableHeaderView:self.headerView];
	[UIView commitAnimations];
	
}

- (void)adView:(GADBannerView *)view
didFailToReceiveAdWithError:(GADRequestError *)error{
	NSLog(@"failed to receive the ad %@", [error localizedDescription]);
}

///////////////////////////////////////////////////////////////////////////////////////////////////
-(void)dealloc {
	_bannerView.delegate = nil;
	[_bannerView release];
	
	TT_RELEASE_SAFELY(_headerView);
	TT_RELEASE_SAFELY(_product);
	TT_RELEASE_SAFELY(_spec);
	TT_RELEASE_SAFELY(_itemId);
	TT_RELEASE_SAFELY(_price);
	TT_RELEASE_SAFELY(_name);
	TT_RELEASE_SAFELY(_category);
	
	[super dealloc];
}


@end

