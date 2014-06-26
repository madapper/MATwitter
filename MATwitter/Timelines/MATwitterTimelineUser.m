//
//  MATwitterTimerlineUser.m
//  TestTwitter
//
//  Created by Paul Napier on 3/10/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import "MATwitterTimelineUser.h"

@implementation MATwitterTimelineUser

-(void)setParams_contributor_details:(bool)contributor_details{
    self->_params_contributor_details = contributor_details;
    if (!contributor_details&&[self.properties.allKeys containsObject:@"contributor_details"]) {
        [self.properties removeObjectForKey:@"contributor_details"];
    }else{
        [self.properties setObject:@(contributor_details) forKey:@"contributor_details"];
    }
}
-(void)setParams_count:(int)count{
    self->_params_count = count;
    if (count==0&&[self.properties.allKeys containsObject:@"count"]) {
        [self.properties removeObjectForKey:@"count"];
    }else{
        [self.properties setObject:@(count) forKey:@"count"];
    }
}
-(void)setParams_exclude_replies:(bool)exclude_replies{
    self->_params_exclude_replies = exclude_replies;
    if (!exclude_replies&&[self.properties.allKeys containsObject:@"exclude_replies"]) {
        [self.properties removeObjectForKey:@"exclude_replies"];
    }else{
        [self.properties setObject:@(exclude_replies) forKey:@"exclude_replies"];
    }
}
-(void)setParams_include_rts:(bool)include_rts{
    self->_params_include_rts = include_rts;
    if (!include_rts&&[self.properties.allKeys containsObject:@"include_rts"]) {
        [self.properties removeObjectForKey:@"include_rts"];
    }else{
        [self.properties setObject:@(include_rts) forKey:@"include_rts"];
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
-(void)setParams_screen_name:(NSString *)screen_name{
    self->_params_screen_name = screen_name;
    if (!screen_name||[screen_name isEqualToString:@""]) {
        if ([self.properties.allKeys containsObject:@"screen_name"]) {
            [self.properties removeObjectForKey:@"screen_name"];
        }
    }else{
        [self.properties setObject:screen_name forKey:@"screen_name"];
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
-(void)setParams_user_id:(int)user_id{
    self->_params_user_id = user_id;
    if (user_id==0&&[self.properties.allKeys containsObject:@"user_id"]) {
        [self.properties removeObjectForKey:@"user_id"];
    }else{
        [self.properties setObject:@(user_id) forKey:@"user_id"];
    }
}

@end
