//
//  MonitorTableItemCell.m
//  PriceMonitor
//
//  Created by hubdog on 3/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MonitorTableItemCell.h"
#import "MonitorTableItem.h"

// UI
#import "Three20UI/TTImageView.h"
#import "Three20UI/UIViewAdditions.h"
#import "Three20Style/UIFontAdditions.h"

// Style
#import "Three20Style/TTGlobalStyle.h"
#import "Three20Style/TTDefaultStyleSheet.h"

// Core
#import "Three20Core/TTCorePreprocessorMacros.h"
#import "Utils.h"

extern const CGFloat    kTableCellSmallMargin;
extern const CGFloat    kTableCellSpacing;
extern const CGFloat    kTableCellMargin;
extern const CGFloat    kTableCellHPadding;
extern const CGFloat    kTableCellVPadding;
extern const NSInteger  kTableMessageTextLineCount;

static CGFloat kImageWidth = 16;
static CGFloat kImageHeight = 16;

@implementation MonitorTableItemCell

+ (CGFloat)tableView:(UITableView*)tableView rowHeightForObject:(id)object{
	CGFloat height = TTSTYLEVAR(tableFont).ttLineHeight*4 + kTableCellVPadding*2;
	
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
		
		_targetLbl = [[UILabel alloc] initWithFrame:CGRectZero];
		_targetLbl.lineBreakMode = UILineBreakModeTailTruncation;
		_targetLbl.adjustsFontSizeToFitWidth = YES;
		[self.contentView addSubview:_targetLbl];
		
		_price = [[UILabel alloc] initWithFrame:CGRectZero];
		[self.contentView addSubview:_price];
		
		_targetImg = [[TTImageView alloc] initWithFrame:CGRectZero];
		[self.contentView addSubview:_targetImg];
		_priceImg = [[TTImageView alloc] initWithFrame:CGRectZero];
		[self.contentView addSubview:_priceImg];
//		self.detailTextLabel.font = TTSTYLEVAR(font);
//		self.detailTextLabel.textColor = TTSTYLEVAR(tableSubTextColor);
//		self.detailTextLabel.highlightedTextColor = TTSTYLEVAR(highlightedTextColor);
//		self.detailTextLabel.textAlignment = UITextAlignmentLeft;
//		self.detailTextLabel.contentMode = UIViewContentModeTop;
//		self.detailTextLabel.lineBreakMode = UILineBreakModeWordWrap;
//		self.detailTextLabel.numberOfLines = 0;
//		self.detailTextLabel.frame = CGRectZero;
		
	}
	
	return self;
}

-(void)dealloc{
	TT_RELEASE_SAFELY(_targetImg);
	TT_RELEASE_SAFELY(_targetLbl);
	TT_RELEASE_SAFELY(_price);
	TT_RELEASE_SAFELY(_priceImg);
	
	[super dealloc];
}

- (void)layoutSubviews {
	[super layoutSubviews];
	//[self.textLabel sizeToFit]; 
	self.textLabel.frame = CGRectMake(kTableCellHPadding, kTableCellHPadding, 260, TTSTYLEVAR(tableFont).ttLineHeight*2);
	_targetLbl.frame = CGRectMake(kTableCellHPadding, self.textLabel.bottom, 260, TTSTYLEVAR(tableFont).ttLineHeight);
	_targetImg.frame = CGRectMake(self.targetLbl.right, self.textLabel.bottom+3, kImageWidth, kImageWidth);
	_price.frame = CGRectMake(kTableCellHPadding, self.targetLbl.bottom, 260, TTSTYLEVAR(tableFont).ttLineHeight);
	_priceImg.frame = CGRectMake(self.price.right, self.targetLbl.bottom+3, kImageWidth, kImageHeight);
	
//	self.detailTextLabel.frame =CGRectMake(self.comment.right, self.area.bottom, self.detailTextLabel.width,  self.detailTextLabel.height);
}

- (void)setObject:(id)object {
	if (_item != object) {
		[super setObject:object];
		
		MonitorTableItem* item = object;
		NSArray* conditionArr= [NSArray arrayWithObjects:@"<=", @"<", @">", @">=", nil];
		
		if (item.text.length) {
			self.textLabel.text = item.text;
		}
		
		self.targetLbl.text = [NSString stringWithFormat:@"目標:現価(%@)%@設定値(%@)" ,
							[Utils intToCurrency:item.currPrice],
							[conditionArr objectAtIndex:item.condition] ,
							[Utils intToCurrency:item.price]];
		
		self.price.text = [NSString stringWithFormat:@"現価:%@" ,[Utils intToCurrency:item.currPrice]];
		BOOL ok=NO;
		
		switch (item.condition) {
			case ConditionLess:
				ok = item.currPrice < item.price;
				break;
			case ConditionLessEqual:
				ok = item.currPrice <= item.price;
				break;
			case ConditionLarge:
				ok = item.currPrice>item.price;
				break;
			case ConditionLargeEqual:
				ok = item.currPrice >= item.price;
				break;
			default:
				break;
		}
		
		if (ok)
		{
			self.targetImg.defaultImage = [UIImage imageNamed:@"ok.png"];
		}
		else {
			self.targetImg.defaultImage = [UIImage imageNamed:@"ng.png"];
		}
		
		if (item.currPrice > item.prevPrice){
			self.priceImg.defaultImage = [UIImage imageNamed:@"up.png"];
		}else if (item.currPrice<item.prevPrice){
			self.priceImg.defaultImage = [UIImage imageNamed:@"down.png"];
		}else {
			self.priceImg.defaultImage = [UIImage imageNamed:@"equal.png"];
		}


	}
}

- (UILabel*)targetLbl {
	if (!_targetLbl) {
		_targetLbl = [[UILabel alloc] init];
		[self.contentView addSubview:_targetLbl];
	}
	return _targetLbl;
}

- (UILabel*)price {
	if (!_price) {
		_price = [[UILabel alloc] init];
		[self.contentView addSubview:_price];
	}
	return _price;
}

- (TTImageView*)priceImg {
	if (!_priceImg) {
		_priceImg = [[TTImageView alloc] init];
		[self.contentView addSubview:_priceImg];
	}
	return _priceImg;
}

- (TTImageView*)targetImg {
	if (!_targetImg) {
		_targetImg = [[TTImageView alloc] init];
		[self.contentView addSubview:_targetImg];
	}
	return _targetImg;
}

@end

