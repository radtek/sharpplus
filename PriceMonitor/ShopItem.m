//
//  ShopItem.m
//  PriceMonitor
//
//  Created by hubdog on 3/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ShopItem.h"


@implementation ShopItem

@synthesize deliverPrice=_deliverPrice, shop=_shop, payImg1=_payImg1, payImg2=_payImg2,
payImg3=_payImg3, area=_area, comment=_commnet;

+(id)initItemWithShop:(NSString*)text deliverPrice:(NSString*)deliverPrice
{
	ShopItem* item = [[[ShopItem alloc] init] autorelease];
	item.text = text;
	item.deliverPrice= deliverPrice;
	
	item.shop = @"";
	item.payImg1 = @"";
	item.payImg2 = @"";
	item.payImg3 = @"";
	item.area = @"";
	item.comment = @"";
	
	return item;
}

-(id)init{
	if (self=[super init]){
		_deliverPrice = nil;
		_shop = nil;
		_payImg1 = nil;
		_payImg2 = nil;
		_payImg3 = nil;
		_area = nil;
		_comment = nil;
	}
	
	return self;
}

-(void)dealloc{
	TT_RELEASE_SAFELY(_deliverPrice);
	TT_RELEASE_SAFELY(_shop);
	TT_RELEASE_SAFELY(_payImg1);
	TT_RELEASE_SAFELY(_payImg2);
	TT_RELEASE_SAFELY(_payImg3);
	TT_RELEASE_SAFELY(_area);
	TT_RELEASE_SAFELY(_comment);
}

-(id)initWithCoder:(NSCoder *)aDecoder{
	if (self=[super initWithCoder:aDecoder]){
		self.deliverPrice = [aDecoder decodeObjectForKey:@"deliverPrice"];
		self.shop = [aDecoder decodeObjectForKey:@"shop"];
		self.payImg1 = [aDecoder decodeObjectForKey:@"payImg1"];
		self.payImg2 = [aDecoder decodeObjectForKey:@"payImg2"];
		self.payImg3 = [aDecoder decodeObjectForKey:@"payImg3"];
		self.area = [aDecoder decodeObjectForKey:@"area"];
		self.comment = [aDecoder decodeObjectForKey:@"comment"];
	}
}

-(void)encodeWithCoder:(NSCoder *)aCoder{
	[super encodeWithCoder:aCoder];
	if (self.deliverPrice){
		[aCoder encodeObject:self.deliverPrice forKey:@"deliverPrice"];
	}
	if (self.shop){
		[aCoder encodeObject:self.shop forKey:@"shop"];
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
