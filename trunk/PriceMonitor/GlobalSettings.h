//
//  GlobalSettings.h
//  PriceMonitor
//
//  Created by hubdog on 1/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersistenceManager.h"

#define kDisplayOrder @"DisplayOrder"
#define kDisplayCount @"DisplayCount"

typedef enum {
    DisplayOrderPopular,
    DisplayOrderLowPrice,
	DisplayOrderHighPrice,
	DisplayOrderDate,
    DisplayOrderDefault = DisplayOrderPopular
} DisplayResultOrder;

@interface GlobalSettings : NSObject {
	NSInteger displayCount;
	DisplayResultOrder displayOrder;
}

@property (nonatomic, assign) NSInteger displayCount;
@property (nonatomic, assign) DisplayResultOrder displayOrder;

+ (GlobalSettings *)settings;

-(void) loadFromDb;
-(void) saveToDb;
-(NSString*)displaySort;

@end
