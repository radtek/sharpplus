//
//  ShopItemCell.m
//  PriceMonitor
//
//  Created by hubdog on 3/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ShopItemCell.h"
#import "ShopItem.h"

// UI
#import "Three20UI/TTImageView.h"
#import "Three20UI/UIViewAdditions.h"
#import "Three20Style/UIFontAdditions.h"

// Style
#import "Three20Style/TTGlobalStyle.h"
#import "Three20Style/TTDefaultStyleSheet.h"

// Core
#import "Three20Core/TTCorePreprocessorMacros.h"

extern const CGFloat    kTableCellSmallMargin;
extern const CGFloat    kTableCellSpacing;
extern const CGFloat    kTableCellMargin;
extern const CGFloat    kTableCellHPadding;
extern const CGFloat    kTableCellVPadding;
extern const NSInteger  kTableMessageTextLineCount;

static CGFloat kImageWidth = 16;
static CGFloat kImageHeight = 16;

@implementation ShopItemCell

+ (CGFloat)tableView:(UITableView*)tableView rowHeightForObject:(id)object{
	ShopItem* item = (ShopItem*)object;

	CGFloat maxWidth = tableView.width - kTableCellHPadding*2;
	//calc price size
	
	CGFloat height = TTSTYLEVAR(tableFont).ttLineHeight + kTableCellVPadding*2;
	//calc deliverPrice size

	if (item.deliveryPrice) {
		CGSize price2Size = [item.deliveryPrice sizeWithFont:TTSTYLEVAR(tableFont) 
							constrainedToSize:CGSizeMake(maxWidth, CGFLOAT_MAX)
											  lineBreakMode:UILineBreakModeWordWrap];
		height +=  price2Size.height;
	}
	//calc shop size
	if (item.shopName) {
		CGSize shopSize = [item.shopName sizeWithFont:TTSTYLEVAR(tableFont) 
										   constrainedToSize:CGSizeMake(maxWidth, CGFLOAT_MAX)
											   lineBreakMode:UILineBreakModeWordWrap];
		height +=  shopSize.height;
	}	
	return height;
	
	
	//calc pay image size
	
	//calc area size
	
	//calc comment size
	
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString*)identifier {
	if (self = [super initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:identifier]) {
		self.textLabel.font = TTSTYLEVAR(tableFont);
		self.textLabel.textColor = TTSTYLEVAR(textColor);
		self.textLabel.highlightedTextColor = TTSTYLEVAR(highlightedTextColor);
		self.textLabel.textAlignment = UITextAlignmentLeft;
		self.textLabel.lineBreakMode = UILineBreakModeTailTruncation;
		self.textLabel.adjustsFontSizeToFitWidth = YES;
//		
//		self.detailTextLabel.font = TTSTYLEVAR(font);
//		self.detailTextLabel.textColor = TTSTYLEVAR(tableSubTextColor);
//		self.detailTextLabel.highlightedTextColor = TTSTYLEVAR(highlightedTextColor);
//		self.detailTextLabel.textAlignment = UITextAlignmentLeft;
//		self.detailTextLabel.contentMode = UIViewContentModeTop;
//		self.detailTextLabel.lineBreakMode = UILineBreakModeTailTruncation;
//		self.detailTextLabel.numberOfLines = kTableMessageTextLineCount;
		_deliveryPrice = [[UILabel alloc] initWithFrame:CGRectZero];
		[self.contentView addSubview:_deliveryPrice];
		
		_shopName = [[UILabel alloc] initWithFrame:CGRectZero];
		[self.contentView addSubview:_shopName];
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

- (void)layoutSubviews {
	[super layoutSubviews];
	
	[self.textLabel sizeToFit]; 
	self.textLabel.top = kTableCellVPadding;
	self.textLabel.left = kTableCellHPadding;
	
	_deliveryPrice.frame = CGRectMake(kTableCellHPadding, self.textLabel.bottom, 300, TTSTYLEVAR(tableFont).ttLineHeight);
	_shopName.frame = CGRectMake(kTableCellHPadding, self.deliveryPrice.bottom, 300, TTSTYLEVAR(tableFont).ttLineHeight);
	
}

- (void)setObject:(id)object {
	if (_item != object) {
		[super setObject:object];
		
		ShopItem* item = object;
		if (item.text.length) {
			self.textLabel.text = [NSString stringWithFormat:@"価格:%@", item.text];
		}
		if (item.deliveryPrice.length) {
			self.deliveryPrice.text = [NSString stringWithFormat:@"送料:%@" ,item.deliveryPrice];
		}
		if (item.shopName.length){
			self.shopName.text = [NSString stringWithFormat:@"ショップ:%@" ,item.shopName];
		}
	}
}

- (UILabel*)deliveryPrice {
	if (!_deliveryPrice) {
		_deliveryPrice = [[UILabel alloc] init];
		[self.contentView addSubview:_deliveryPrice];
	}
	return _deliveryPrice;
}

- (UILabel*)shopName {
	if (!_shopName) {
		_shopName = [[UILabel alloc] init];
		[self.contentView addSubview:_shopName];
	}
	return _shopName;
}

@end
