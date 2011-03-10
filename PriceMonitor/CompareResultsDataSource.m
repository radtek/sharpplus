//
//  CompareResultsDataSource.m
//  PriceMonitor
//
//  Created by hubdog on 3/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CompareResultsDataSource.h"
#import "CompareResult.h"
#import "CompareResultsModel.h"


@implementation CompareResultsDataSource

- (void)tableViewDidLoadModel:(UITableView *)tableView
{
    [super tableViewDidLoadModel:tableView];
    
    //TTLOG(@"Removing all objects in the table view.");
    [self.items removeAllObjects];
    
    // Construct an object that is suitable for the table view system
    // from each SearchResult domain object that we retrieve from the TTModel.
    for (CompareResult *result in [(id<CompareResultsModel>)self.model results])
        [self.items addObject:[TTTableSubtitleItem itemWithText:result.price 
													   subtitle:result.shopName
													   URL:result.shopURL]
		 ];
    
    //TTLOG(@"Added %lu search result objects", (unsigned long)[self.items count]);
}

@end
