//
//  MATwitterRetweetsOfMe.m
//  TestTwitter
//
//  Created by Paul Napier on 3/10/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import "MATwitterTimelineRetweetsOfMe.h"

@implementation MATwitterTimelineRetweetsOfMe

-(void)setParams_count:(int)count{
    self->_params_count = count;
    if (count==0&&[self.properties.allKeys containsObject:@"count"]) {
        [self.properties removeObjectForKey:@"count"];
    }else{
        [self.properties setObject:@(count) forKey:@"count"];
    }
}
-(void)setParams_max_id:(int)max_id{
    self->_params_max_id = max_id;
    if (max_id==0&&[self.properties.allKeys containsObject:@"max_id"]) {
        [self.properties removeObjectForKey:@"max_id"];
    }else{
        [self.properties setObject:@(max_id) forKey:@"max_id"];
    }
}

-(void)setParams_include_entities:(bool)include_entities{
    self->_params_include_entities = include_entities;
    if (!include_entities&&[self.properties.allKeys containsObject:@"include_entities"]) {
        [self.properties removeObjectForKey:@"include_entities"];
    }else{
        [self.properties setObject:@(include_entities) forKey:@"include_entities"];
    }
}
-(void)setParams_include_user_entities:(bool)include_user_entities{
    self->_params_include_user_entities = include_user_entities;
    if (!include_user_entities&&[self.properties.allKeys containsObject:@"include_user_entities"]) {
        [self.properties removeObjectForKey:@"include_user_entities"];
    }else{
        [self.properties setObject:@(include_user_entities) forKey:@"include_user_entities"];
    }
}

-(void)setParams_since_id:(int)since_id{
    self->_params_since_id = since_id;
    if (since_id==0&&[self.properties.allKeys containsObject:@"since_id"]) {
        [self.properties removeObjectForKey:@"since_id"];
    }else{
        [self.properties setObject:@(since_id) forKey:@"since_id"];
    }
}
-(void)setParams_trim_user:(bool)trim_user{
    self->_params_trim_user = trim_user;
    if (!trim_user&&[self.properties.allKeys containsObject:@"trim_user"]) {
        [self.properties removeObjectForKey:@"trim_user"];
    }else{
        [self.properties setObject:@(trim_user) forKey:@"trim_user"];
    }
}

@end
