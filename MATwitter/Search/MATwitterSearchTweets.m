//
//  MATwitterSearchTweets.m
//  TestTwitter
//
//  Created by Paul Napier on 3/10/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import "MATwitterSearchTweets.h"

@implementation MATwitterSearchTweets

-(id)initWithQuery:(NSString *)params_q{
    self = [super init];
    if (self) {
        self.params_q = params_q;
    }
    return self;
}

-(void)setParams_count:(int)params_count{
    self->_params_count = params_count;
    if (params_count==0) {
        if ([self.properties.allKeys containsObject:@"count"]) {
            [self.properties removeObjectForKey:@"count"];

        }
    }else{
        [self.properties setObject:@(params_count) forKey:@"count"];
    }
}
-(void)setParams_geocode:(MATwitterLocation *)params_geocode{
    self->_params_geocode = params_geocode;
    if (!params_geocode) {
        if ([self.properties.allKeys containsObject:@"geocode"]) {
            [self.properties removeObjectForKey:@"geocode"];
        }
    }else{
        [self.properties setObject:[params_geocode stringLocation] forKey:@"geocode"];
    }
}
-(void)setParams_include_entities:(bool)params_include_entities{
    self->_params_include_entities = params_include_entities;
    if (!params_include_entities) {
        if ([self.properties.allKeys containsObject:@"include_entities"]) {
            [self.properties removeObjectForKey:@"include_entities"];
            
        }
    }else{
        [self.properties setObject:@(params_include_entities) forKey:@"include_entities"];
    }
}
-(void)setParams_lang:(MATwitterLanguage)params_lang{
    self->_params_lang = params_lang;
    if (!params_lang&&[self.properties.allKeys containsObject:@"lang"]) {
        [self.properties removeObjectForKey:@"lang"];
    }else{
        [self.properties setObject:[MATwitterLanguages iso6391Code:params_lang] forKey:@"lang"];
    }
}

-(void)setParams_max_id:(int)params_max_id{
    self->_params_max_id = params_max_id;
    if (params_max_id==0) {
        if ([self.properties.allKeys containsObject:@"max_id"]) {
            [self.properties removeObjectForKey:@"max_id"];
            
        }
    }else{
        [self.properties setObject:@(params_max_id) forKey:@"max_id"];
    }
}
-(void)setParams_q:(NSString *)params_q{
    self->_params_q = params_q;
    if (!params_q) {
        if ([self.properties.allKeys containsObject:@"q"]) {
            [self.properties removeObjectForKey:@"q"];
            
        }
    }else{
        [self.properties setObject:params_q forKey:@"q"];
    }
}
-(void)setParams_result_type:(MATwitterResultType)params_result_type{
    self->_params_result_type = params_result_type;
    if (!params_result_type) {
        if ([self.properties.allKeys containsObject:@"result_type"]) {
            [self.properties removeObjectForKey:@"result_type"];
            
        }
    }else{
        [self.properties setObject:[self getResultType:params_result_type] forKey:@"result_type"];
    }
}
-(void)setParams_since_id:(int)params_since_id{
    self->_params_since_id = params_since_id;
    if (params_since_id==0) {
        if ([self.properties.allKeys containsObject:@"since_id"]) {
            [self.properties removeObjectForKey:@"since_id"];
        }
    }else{
        [self.properties setObject:@(params_since_id) forKey:@"since_id"];
    }
}
-(void)setParams_until:(NSString *)params_until{
    self->_params_until = params_until;
    if (!params_until) {
        if ([self.properties.allKeys containsObject:@"until"]) {
            [self.properties removeObjectForKey:@"until"];
            
        }
    }else{
        [self.properties setObject:params_until forKey:@"until"];
    }
}

-(NSString *)getResultType:(MATwitterResultType)result_type{
    NSDictionary *dict = @{
                           @(MATwitterResultTypeMixed): @"mixed",
                           @(MATwitterResultTypePopular): @"popular",
                           @(MATwitterResultTypeRecent): @"recent",
                           };
    return dict[@(result_type)];
}


@end
