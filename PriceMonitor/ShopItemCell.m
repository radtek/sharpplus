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
	
	//calc pay image size
	if (item.payImg1){
		height += TTSTYLEVAR(tableFont).ttLineHeight;
	}
	
	//calc area size
	if (item.area){
		height += TTSTYLEVAR(tableFont).ttLineHeight;
	}
	
	//calc comment size
	return height;	
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
		
		_payMethod = [[UILabel alloc] initWithFrame:CGRectZero];
		[self.contentView addSubview:_payMethod];
		_payImg1 = [[TTImageView alloc] initWithFrame:CGRectZero];
		[self.contentView addSubview:_payImg1];
		_payImg2 = [[TTImageView alloc] initWithFrame:CGRectZero];
		[self.contentView addSubview:_payImg2];
		_payImg3 = [[TTImageView alloc] initWithFrame:CGRectZero];
		[self.contentView addSubview:_payImg3];
		_area = [[UILabel alloc] initWithFrame:CGRectZero];
		[self.contentView addSubview:_area];		
	}
	
	return self;
}

-(void)dealloc{
	TT_RELEASE_SAFELY(_deliveryPrice);
	TT_RELEASE_SAFELY(_shopName);
	TT_RELEASE_SAFELY(_payMethod);
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
	_payMethod.frame = CGRectMake(kTableCellHPadding, self.shopName.bottom, 80, TTSTYLEVAR(tableFont).ttLineHeight);
	_payImg1.frame = CGRectMake(_payMethod.right, self.shopName.bottom+2, kImageWidth, kImageHeight);
	_payImg2.frame = CGRectMake(_payImg1.right, self.shopName.bottom+2, kImageWidth, kImageHeight);
	_payImg3.frame = CGRectMake(_payImg2.right, self.shopName.bottom+2, kImageWidth, kImageHeight);

	_area.frame = CGRectMake(kTableCellHPadding, self.payMethod.bottom, 300,  TTSTYLEVAR(tableFont).ttLineHeight);
	
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
		
		self.payMethod.text = @"支払方法:";
		if (item.payImg1.length){
			self.payImg1.urlPath = item.payImg1;
		}
		if (item.payImg2.length){
			self.payImg2.urlPath = item.payImg2;
		}
		if (item.payImg3.length){
			self.payImg3.urlPath = item.payImg3;
		}
		if (item.area.length){
			self.area.text = [NSString stringWithFormat:@"地域:%@", item.area];
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

- (UILabel*)payMethod {
	if (!_payMethod) {
		_payMethod = [[UILabel alloc] init];
		[self.contentView addSubview:_payMethod];
	}
	return _payMethod;
}

- (TTImageView*)payImg1 {
	if (!_payImg1) {
		_payImg1 = [[TTImageView alloc] init];
		[self.contentView addSubview:_payImg1];
	}
	return _payImg1;
}

- (TTImageView*)payImg2 {
	if (!_payImg2) {
		_payImg2 = [[TTImageView alloc] init];
		[self.contentView addSubview:_payImg2];
	}
	return _payImg2;
}

- (TTImageView*)payImg3 {
	if (!_payImg3) {
		_payImg3 = [[TTImageView alloc] init];
		[self.contentView addSubview:_payImg3];
	}
	return _payImg3;
}

- (UILabel*)area {
	if (!_area) {
		_area = [[UILabel alloc] init];
		[self.contentView addSubview:_area];
	}
	return _area;
}

@end
