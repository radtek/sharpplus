//
//  ShopItem.h
//  PriceMonitor
//
//  Created by hubdog on 3/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Three20/Three20.h"


@interface ShopItem : TTTableTextItem {
	NSString* _deliverPrice;
	NSString* _shop;
	NSString* _payImg1;
	NSString* _payImg2;
	NSString* _payImg3;
	NSString* _area;
	NSString* _comment;
}

@property (nonatomic,copy) NSString* deliverPrice;
@property (nonatomic,copy) NSString* shop;
@property (nonatomic,copy) NSString* payImg1;
@property (nonatomic,copy) NSString* payImg2;
@property (nonatomic,copy) NSString* payImg3;
@property (nonatomic,copy) NSString* area;
@property (nonatomic,copy) NSString* comment;


+(id)initItemWithShop:(NSString*)text deliverPrice:(NSString*)deliverPrice;

@end
