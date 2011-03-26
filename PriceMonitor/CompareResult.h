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
	NSString *spec;
	
	//paylist
	NSString *payImg1;
	NSString *payImg2;
	NSString *payImg3;
	NSString *comment;
	
}

@property (nonatomic, retain) NSString *price;
@property (nonatomic, retain) NSString *deliveryPrice;
@property (nonatomic, retain) NSString *shopName;
@property (nonatomic, retain) NSString *shopURL;
@property (nonatomic, retain) NSString *shopArea;
@property (nonatomic, retain) NSString *hasStock;
@property (nonatomic, retain) NSString *category;
@property (nonatomic, retain) NSString *spec;

@property (nonatomic, retain) NSString *payImg1;
@property (nonatomic, retain) NSString *payImg2;
@property (nonatomic, retain) NSString *payImg3;
@property (nonatomic, retain) NSString *comment;

@end
