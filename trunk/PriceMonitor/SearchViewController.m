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
	
	self.title = @"Search";
	UIImage* image = [UIImage imageNamed:@"tab.png"];
	self.tabBarItem = [[[UITabBarItem alloc] initWithTitle:self.title image:image tag:0] autorelease];
	
	self.tableView.tableHeaderView = self.headerView;
	//self.tableView.tableFooterView = self.footerView;
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

///////////////////////////////////////////////////////////////////////////////////////////////////
-(void)dealloc {
	TT_RELEASE_SAFELY(_headerView);
	[super dealloc];
}

@end

