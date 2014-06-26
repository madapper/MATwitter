//
//  MATwitterRetweeters.m
//  TestTwitter
//
//  Created by Paul Napier on 3/10/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import "MATwitterTweetsRetweeters.h"

@implementation MATwitterTweetsRetweeters

-(id)init{
    self = [super init];
    if (self) {
        self.params_stringify_ids = true;
    }
    return self;
}

-(id)initWithID:(NSString *)params_id{
    self = [super init];
    if (self) {
        self.params_id = params_id;
        self.params_stringify_ids = true;
    }
    return self;
}

-(void)setParams_count:(int)params_count{
    self->_params_count = params_count;
    if (!params_count&&[self.properties.allKeys containsObject:@"count"]) {
        [self.properties removeObjectForKey:@"count"];
    }else{
        [self.properties setObject:@(params_count) forKey:@"count"];
    }

}
-(void)setParams_cursor:(int)params_cursor{
    self->_params_cursor = params_cursor;
    if (!params_cursor&&[self.properties.allKeys containsObject:@"cursor"]) {
        [self.properties removeObjectForKey:@"cursor"];
    }else{
        [self.properties setObject:@(params_cursor) forKey:@"cursor"];
    }

}
-(void)setParams_id:(NSString *)params_id{
    self->_params_id = params_id;
    if (!params_id&&[self.properties.allKeys containsObject:@"id"]) {
        [self.properties removeObjectForKey:@"id"];
    }else{
        [self.properties setObject:params_id forKey:@"id"];
    }

}
-(void)setParams_stringify_ids:(bool)params_stringify_ids{
    self->_params_stringify_ids = params_stringify_ids;
    if (!params_stringify_ids&&[self.properties.allKeys containsObject:@"stringify_ids"]) {
        [self.properties removeObjectForKey:@"stringify_ids"];
    }else{
        [self.properties setObject:@(params_stringify_ids) forKey:@"stringify_ids"];
    }

    
}



@end
