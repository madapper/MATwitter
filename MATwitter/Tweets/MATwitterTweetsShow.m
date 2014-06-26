//
//  MATwitterShow.m
//  TestTwitter
//
//  Created by Paul Napier on 3/10/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import "MATwitterTweetsShow.h"

@implementation MATwitterTweetsShow

-(id)initWithID:(NSString *)params_id{
    self = [super init];
    if (self) {
        self.params_id = params_id;
    }
    return self;
}

-(void)setParams_id:(NSString *)params_id{
    self->_params_id = params_id;
    [self.properties setObject:params_id forKey:@"id"];
}

-(void)setParams_trim_user:(bool)trim_user{
    self->_params_trim_user = trim_user;
    if (!trim_user&&[self.properties.allKeys containsObject:@"trim_user"]) {
        [self.properties removeObjectForKey:@"trim_user"];
    }else{
        [self.properties setObject:@(trim_user) forKey:@"trim_user"];
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

-(void)setParams_include_my_retweet:(bool)include_my_retweet{
    self->_params_include_my_retweet = include_my_retweet;
    if (!include_my_retweet&&[self.properties.allKeys containsObject:@"include_my_retweet"]) {
        [self.properties removeObjectForKey:@"include_my_retweet"];
    }else{
        [self.properties setObject:@(include_my_retweet) forKey:@"include_my_retweet"];
    }
}

@end
