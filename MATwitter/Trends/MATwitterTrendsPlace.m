//
//  MATwitterTrendsPlace.m
//  TestTwitter
//
//  Created by Paul Napier on 3/10/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import "MATwitterTrendsPlace.h"

@implementation MATwitterTrendsPlace

-(id)initWithWoeid:(NSString *)woeid{
    self = [super init];
    if (self) {
        self.woeid = woeid;
    }
    return self;
}

-(void)setWoeid:(NSString *)woeid{
    self->_woeid = woeid;
    if (!woeid) {
        if ([self.properties.allKeys containsObject:@"id"]) {
            [self.properties removeObjectForKey:@"id"];
            
        }
    }else{
        [self.properties setObject:woeid forKey:@"id"];
    }
}



@end
