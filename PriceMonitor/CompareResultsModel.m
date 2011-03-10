//
//  SearchResultsModel.m
//
//  Created by Keith Lazuka on 7/25/09.
//

#import "KakakuCompareResultsModel.h"
#import "CompareResultsModel.h"

CompareService CurrentCompareService = CompareServiceDefault;
CompareResponseFormat CurrentCompareResponseFormat = CompareResponseFormatDefault;

id<CompareResultsModel> CreateCompareModel(CompareService service, CompareResponseFormat responseFormat)
{
    id<CompareResultsModel> model = nil;
    switch ( service ) {
        case CompareServiceKakaku:
            model = [[[KakakuCompareResultsModel alloc] initWithResponseFormat:responseFormat] autorelease];
            break;
        case CompareServiceAmazon:
            model = nil;//[[[FlickrSearchResultsModel alloc] initWithResponseFormat:responseFormat] autorelease];
            break;
        default:
            [NSException raise:@"CurrentSearchService unknown" format:nil];
            break;
    }
    return model;
}

id<CompareResultsModel> CreateCompareModelWithCurrentSettings(void)
{
    return CreateCompareModel(CurrentCompareService, CurrentCompareResponseFormat);
}