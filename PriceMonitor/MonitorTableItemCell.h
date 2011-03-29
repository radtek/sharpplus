//
//  MonitorTableItemCell.h
//  PriceMonitor
//
//  Created by hubdog on 3/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Three20/Three20.h"


@interface MonitorTableItemCell : TTTableTextItemCell {
	
	UILabel* _targetLbl;
	TTImageView* _targetImg;
	
	UILabel* _price;
	TTImageView* _priceImg;
}

@property (nonatomic, readonly, retain) UILabel*      targetLbl;
@property (nonatomic, readonly, retain) TTImageView*      targetImg;
@property (nonatomic, readonly, retain) UILabel*      price;
@property (nonatomic, readonly, retain) TTImageView*  priceImg;

@end

