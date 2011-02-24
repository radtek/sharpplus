//
//  SearchResult.h
//
//  Created by Keith Lazuka on 7/23/09.
//  
//

#import "Three20/Three20.h"

@interface SearchResult : NSObject
{
    NSString *title;
    NSString *imageURL;
    NSString *detail;
	NSString *detailURL;
    CGSize imageSize;
}

@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *imageURL;
@property (nonatomic, retain) NSString *detail;
@property (nonatomic, retain) NSString *detailURL;
@property (nonatomic, assign) CGSize imageSize;

@end
