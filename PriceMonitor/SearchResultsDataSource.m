//
//  SearchResultsTableDataSource.m
//
//  Created by Keith Lazuka on 7/23/09.
//  
//

#import "SearchResultsDataSource.h"
#import "SearchResult.h"
#import "SearchResultsModel.h"

@implementation SearchResultsDataSource

- (void)tableViewDidLoadModel:(UITableView *)tableView
{
    [super tableViewDidLoadModel:tableView];
    
    //TTLOG(@"Removing all objects in the table view.");
    [self.items removeAllObjects];
    
    // Construct an object that is suitable for the table view system
    // from each SearchResult domain object that we retrieve from the TTModel.
    for (SearchResult *result in [(id<SearchResultsModel>)self.model results])
        [self.items addObject:[TTTableTextItem itemWithText:result.title URL:@"tt://monitorEdit/1"]
//		 [TTTableImageItem itemWithText:result.title
//                         imageURL:result.thumbnailURL
//                         defaultImage:[UIImage imageNamed:@"photo_placeholder.png"]
//                         URL:nil]
		 ];
    
    //TTLOG(@"Added %lu search result objects", (unsigned long)[self.items count]);
}

@end
