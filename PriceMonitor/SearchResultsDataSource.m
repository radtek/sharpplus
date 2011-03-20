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
    for (SearchResult *result in [(id<SearchResultsModel>)self.model results]){
		//extract id from url
		NSArray* urlList = [result.detailURL componentsSeparatedByString:@"/"];
		NSInteger index = [urlList count] - 2;
		NSString* url =[NSString stringWithFormat:@"tt://compareItem?action=new&itemId=%@", [urlList objectAtIndex:index]];
		//NSString* url =[NSString stringWithFormat:@"tt://monitorEdit/1", [urlList objectAtIndex:index]];
		
        [self.items addObject:[TTTableSubtitleItem itemWithText:result.title 
							subtitle:result.detail
							imageURL:result.imageURL
							URL:url]
		 ];
		
	}
    
	[self.items addObject:[TTTableMoreButton itemWithText:@"More"]];
    //TTLOG(@"Added %lu search result objects", (unsigned long)[self.items count]);
}

@end
