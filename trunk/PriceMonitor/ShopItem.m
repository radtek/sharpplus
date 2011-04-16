//
//  ShopItem.m
//  PriceMonitor
//
//  Created by hubdog on 3/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ShopItem.h"


@implementation ShopItem

@synthesize deliveryPrice=_deliveryPrice, shopName=_shopName, payImg1=_payImg1, payImg2=_payImg2,
payImg3=_payImg3, area=_area, comment=_comment;

+(id)initItemWithShop:(CompareResult*)shop
{
	ShopItem* item = [[[ShopItem alloc] init] autorelease];
	item.text = shop.price;
	item.URL = [NSString stringWithFormat:@"http://s.kakaku.com%@", shop.shopURL];	
//	NSLog(item.URL);
	item.deliveryPrice= shop.deliveryPrice;
	
	item.shopName = shop.shopName;
	item.payImg1 = shop.payImg1;
	item.payImg2 = shop.payImg2;
	item.payImg3 = shop.payImg3;
	item.area = shop.shopArea;
	item.comment = shop.comment;
	
	return item;
}

-(id)init{
	if (self=[super init]){
		_deliveryPrice = nil;
		_shopName = nil;
		_payImg1 = nil;
		_payImg2 = nil;
		_payImg3 = nil;
		_area = nil;
		_comment = nil;
	}
	
	return self;
}

-(void)dealloc{
	TT_RELEASE_SAFELY(_deliveryPrice);
	TT_RELEASE_SAFELY(_shopName);
	TT_RELEASE_SAFELY(_payImg1);
	TT_RELEASE_SAFELY(_payImg2);
	TT_RELEASE_SAFELY(_payImg3);
	TT_RELEASE_SAFELY(_area);
	TT_RELEASE_SAFELY(_comment);
	[super dealloc];
}

-(id)initWithCoder:(NSCoder *)aDecoder{
	if (self=[super initWithCoder:aDecoder]){
		self.deliveryPrice = [aDecoder decodeObjectForKey:@"deliveryPrice"];
		self.shopName = [aDecoder decodeObjectForKey:@"shopName"];
		self.payImg1 = [aDecoder decodeObjectForKey:@"payImg1"];
		self.payImg2 = [aDecoder decodeObjectForKey:@"payImg2"];
		self.payImg3 = [aDecoder decodeObjectForKey:@"payImg3"];
		self.area = [aDecoder decodeObjectForKey:@"area"];
		self.comment = [aDecoder decodeObjectForKey:@"comment"];
	}
	return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder{
	[super encodeWithCoder:aCoder];
	if (self.deliveryPrice){
		[aCoder encodeObject:self.deliveryPrice forKey:@"deliveryPrice"];
	}
	if (self.shopName){
		[aCoder encodeObject:self.shopName forKey:@"shopName"];
	}
	if (self.payImg1){
		[aCoder encodeObject:self.payImg1 forKey:@"payImg1"];
	}
	if (self.payImg2){
		[aCoder encodeObject:self.payImg2 forKey:@"payImg2"];
	}
	if (self.payImg3){
		[aCoder encodeObject:self.payImg3 forKey:@"payImg3"];
	}
	if (self.area){
		[aCoder encodeObject:self.area forKey:@"area"];
	}
	if (self.comment){
		[aCoder encodeObject:self.comment forKey:@"comment"];
	}
}

@end
