//
//  SearchViewController.m
//  PriceMonitor
//
//  Created by hubdog on 1/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SearchViewController.h"
#import "SearchResultsModel.h"
#import "SearchResultsDataSource.h"



@implementation SearchViewController

@synthesize headerView = _headerView;

///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)viewDidLoad {
	[super viewDidLoad];
	_bannerVisible = FALSE;
	
	self.title = @"検索";
	UIImage* image = [UIImage imageNamed:@"search.png"];
	self.tabBarItem = [[[UITabBarItem alloc] initWithTitle:self.title image:image tag:0] autorelease];
	
	//self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth  ;
	_bannerView = [[GADBannerView alloc] initWithFrame:CGRectMake(0, -50, GAD_SIZE_320x50.width, 
																  GAD_SIZE_320x50.height)];

	_bannerView.adUnitID = @"a14da56a6fd301d";
	_bannerView.rootViewController = self;
	[self.headerView addSubview:_bannerView];
	self.tableView.tableHeaderView = self.headerView;
	
	GADRequest* request = [GADRequest request];
	request.testing = YES;
	_bannerView.delegate = self;
	[_bannerView loadRequest:request];
}

- (void)createModel {
	// Initialize our TTTableViewDataSource and our TTModel.
	id<TTTableViewDataSource> ds = [SearchResultsDataSource dataSourceWithItems:nil];
	ds.model = CreateSearchModelWithCurrentSettings();
	
	// By setting the dataSource property, the model property for this
	// class (SearchTableViewController) will automatically be hooked up 
	// to point at the same model that the dataSource points at, 
	// which we just instantiated above.
	self.dataSource = ds;
}

////////////////////////////////////////////////////////////////////////////////////
#pragma mark TTViewController

- (UIImage*)imageForError:(NSError*)error
{
    return [UIImage imageNamed:@"Three20.bundle/images/error.png"];
}

/////////////////////////////////////////////////////////////////////////////////////
#pragma mark UISearchBarDelegate

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    // Configure our TTModel with the user's search terms
    // and tell the TTModelViewController to reload.
    [searchBar resignFirstResponder];
    [(id<SearchResultsModel>)self.model setSearchTerms:[searchBar text]];
    [self reload];
    [self.tableView scrollToTop:YES];
}

#pragma mark Banner Delegate
- (void)adViewDidReceiveAd:(GADBannerView *)view{
	NSLog(@"receive ad");
	if (!_bannerVisible){
		[UIView beginAnimations:@"BannerSlide" context:nil];
		CGRect newFrame =self.headerView.frame;
		newFrame.size.height += GAD_SIZE_320x50.height;
		_bannerView.frame = CGRectMake(0, 45, GAD_SIZE_320x50.width, 
									  GAD_SIZE_320x50.height);
		self.headerView.frame = newFrame;
	
		[self.tableView setTableHeaderView:self.headerView];
		[UIView commitAnimations];
		_bannerVisible = TRUE;
	}
	
}

- (void)adView:(GADBannerView *)view
didFailToReceiveAdWithError:(GADRequestError *)error{
	NSLog(@"failed to receive the ad %@", [error localizedDescription]);
}

///////////////////////////////////////////////////////////////////////////////////////////////////
-(void)dealloc {
	_bannerView.delegate = nil;
	TT_RELEASE_SAFELY(_bannerView);
	TT_RELEASE_SAFELY(_headerView);
	[super dealloc];
}

@end

