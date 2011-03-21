//
//  CompareResult.h
//  PriceMonitor
//
//  Created by hubdog on 3/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CompareResult : NSObject {
    NSString *price;
	NSString *deliveryPrice;
    NSString *shopName;
	NSString *shopArea;
    NSString *shopURL;
	NSString *hasStock;
	NSString *category;
}

@property (nonatomic, retain) NSString *price;
@property (nonatomic, retain) NSString *deliveryPrice;
@property (nonatomic, retain) NSString *shopName;
@property (nonatomic, retain) NSString *shopURL;
@property (nonatomic, retain) NSString *shopArea;
@property (nonatomic, retain) NSString *hasStock;
@property (nonatomic, retain) NSString *category;

@end
