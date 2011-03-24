//
//  ShopItemCell.h
//  PriceMonitor
//
//  Created by hubdog on 3/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Three20/Three20.h"


@interface ShopItemCell : TTTableTextItemCell {
	
	UILabel* _deliverPrice;
	UILabel* _shop;
	
	TTImageView* _payImg1;
	TTImageView* _payImg2;
	TTImageView* _payImg3;
	
	UILabel* _area;
	UILabel* _comment;

}

@property (nonatomic, readonly, retain) UILabel*      deliverPrice;
//@property (nonatomic, readonly, retain) UILabel*      shop;
//
//@property (nonatomic, readonly, retain) TTImageView*  payImg1;
//@property (nonatomic, readonly, retain) TTImageView*  payImg2;
//@property (nonatomic, readonly, retain) TTImageView*  payImg3;
//
//@property (nonatomic, readonly, retain) UILabel*      area;
//@property (nonatomic, readonly, retain) UILabel*      comment;


@end
