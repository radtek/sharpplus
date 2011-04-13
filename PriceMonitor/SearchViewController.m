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

@synthesize headerView = _headerView, footerView = _footerView;

///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.title = @"検索";
	UIImage* image = [UIImage imageNamed:@"search.png"];
	self.tabBarItem = [[[UITabBarItem alloc] initWithTitle:self.title image:image tag:0] autorelease];
	
	self.tableView.tableHeaderView = self.headerView;
	//self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth  ;
	_bannerView = [[GADBannerView alloc] initWithFrame:CGRectMake(0, 0, GAD_SIZE_320x50.width, 
																  GAD_SIZE_320x50.height)];
	
	_bannerView.adUnitID = @"a14da56a6fd301d";
	_bannerView.rootViewController = self;
	[self.footerView addSubview:_bannerView];
	self.tableView.tableFooterView = self.footerView;
	
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
	
}

- (void)adView:(GADBannerView *)view
didFailToReceiveAdWithError:(GADRequestError *)error{
	NSLog(@"failed to receive the ad %@", [error localizedDescription]);
}

- (void)adViewWillPresentScreen:(GADBannerView *)adView{
}

- (void)adViewWillDismissScreen:(GADBannerView *)adView{
	
}

// Sent just after dismissing a full screen view.  Use this opportunity to
// restart anything you may have stopped as part of adViewWillPresentScreen:.
- (void)adViewDidDismissScreen:(GADBannerView *)adView{
	
}

// Sent just before the application will background or terminate because the
// user clicked on an ad that will launch another application (such as the App
// Store).  The normal UIApplicationDelegate methods, like
// applicationDidEnterBackground:, will be called immediately before this.
- (void)adViewWillLeaveApplication:(GADBannerView *)adView{
}


///////////////////////////////////////////////////////////////////////////////////////////////////
-(void)dealloc {
	_bannerView.delegate = nil;
	TT_RELEASE_SAFELY(_bannerView);
	TT_RELEASE_SAFELY(_headerView);
	TT_RELEASE_SAFELY(_footerView);
	[super dealloc];
}

@end

