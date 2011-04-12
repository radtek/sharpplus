//
//  KakakuService.m
//  PriceMonitor
//
//  Created by hubdog on 4/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "KakakuService.h"


@implementation KakakuService
-(id) init {
    [super init];
    return self;
}

-(id) getKey {
	[self setMethod:@"kakaku.getkey"];
	[self runMethod];
	return self;
}

- (void) dealloc {
    [super dealloc];
	
}

@end
