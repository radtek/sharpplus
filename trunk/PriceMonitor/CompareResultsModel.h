#import "Three20/Three20.h"

typedef enum {
    CompareServiceKakaku,
    CompareServiceAmazon,
    CompareServiceDefault = CompareServiceKakaku
} CompareService;
extern CompareService CurrentCompareService;

typedef enum {
    CompareResponseFormatXML,
    CompareResponseFormatJSON,
    CompareResponseFormatDefault = CompareResponseFormatXML
} CompareResponseFormat;
extern CompareResponseFormat CurrentCompareResponseFormat;

#pragma mark -

@protocol CompareResultsModel <TTModel>

@property (nonatomic, readonly) NSArray *results;                           // A list of domain objects constructed by the model after parsing the web service's HTTP response. In this case, it is a list of SearchResult objects.
@property (nonatomic, readonly) NSUInteger totalResultsAvailableOnServer;   // The total number of results available on the server (but not necessarily downloaded) for the current model configuration's search query.
@property (nonatomic, retain) NSString *itemId;                        // The keywords that will be submitted to the web service in order to do the actual image search (e.g. "green apple")

- (id)initWithResponseFormat:(CompareResponseFormat)responseFormat;          // The designated initializer

@end

#pragma mark -

// Factory methods for instantiating a functioning SearchResultsModel.
id<CompareResultsModel> CreateCompareModelWithCurrentSettings(void);
id<CompareResultsModel> CreateCompareModel(CompareService service, CompareResponseFormat responseFormat);

