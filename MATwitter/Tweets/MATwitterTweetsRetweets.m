//
//  MATwitterRetweets.m
//  TestTwitter
//
//  Created by Paul Napier on 3/10/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import "MATwitterTweetsRetweets.h"

@implementation MATwitterTweetsRetweets

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

-(void)setParams_count:(int)count{
    self->_params_count = count;
    if (count==0&&[self.properties.allKeys containsObject:@"count"]) {
        [self.properties removeObjectForKey:@"count"];
    }else{
        [self.properties setObject:@(count) forKey:@"count"];
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
