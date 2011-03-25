//
//  ShopItem.h
//  PriceMonitor
//
//  Created by hubdog on 3/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Three20/Three20.h"
#import "CompareResult.h"


@interface ShopItem : TTTableTextItem {
	NSString* _deliveryPrice;
	NSString* _shopName;
	NSString* _payImg1;
	NSString* _payImg2;
	NSString* _payImg3;
	NSString* _area;
	NSString* _comment;
	
}

@property (nonatomic,copy) NSString* deliveryPrice;
@property (nonatomic,copy) NSString* shopName;
@property (nonatomic,copy) NSString* payImg1;
@property (nonatomic,copy) NSString* payImg2;
@property (nonatomic,copy) NSString* payImg3;
@property (nonatomic,copy) NSString* area;
@property (nonatomic,copy) NSString* comment;

+(id)initItemWithShop:(CompareResult*)shop;

@end
