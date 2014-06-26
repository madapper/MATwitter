//
//  MATwitterOEmbed.m
//  TestTwitter
//
//  Created by Paul Napier on 3/10/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import "MATwitterTweetsOEmbed.h"

@implementation MATwitterTweetsOEmbed


-(id)initWithID:(NSString *)params_id{
    self = [super init];
    if (self) {
        self.params_id = params_id;
    }
    return self;
}

-(void)setParams_align:(MATwitterAlignment)params_align{
    self->_params_align = params_align;
    if (!params_align&&[self.properties.allKeys containsObject:@"align"]) {
        [self.properties removeObjectForKey:@"align"];
    }else{
        [self.properties setObject:[self getAlignment:params_align] forKey:@"align"];
    }
}
-(void)setParams_hide_media:(bool)params_hide_media{
    self->_params_hide_media = params_hide_media;
    if (!params_hide_media&&[self.properties.allKeys containsObject:@"hide_media"]) {
        [self.properties removeObjectForKey:@"hide_media"];
    }else{
        [self.properties setObject:@(params_hide_media) forKey:@"hide_media"];
    }
}
-(void)setParams_hide_thread:(bool)params_hide_thread{
    self->_params_hide_thread = params_hide_thread;
    if (!params_hide_thread&&[self.properties.allKeys containsObject:@"hide_thread"]) {
        [self.properties removeObjectForKey:@"hide_thread"];
    }else{
        [self.properties setObject:@(params_hide_thread) forKey:@"hide_thread"];
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
-(void)setParams_lang:(MATwitterLanguage)params_lang{
    self->_params_lang = params_lang;
    if (!params_lang&&[self.properties.allKeys containsObject:@"lang"]) {
        [self.properties removeObjectForKey:@"lang"];
    }else{
        [self.properties setObject:[MATwitterLanguages iso6391Code:params_lang] forKey:@"lang"];
    }
}
-(void)setParams_maxwidth:(int)params_maxwidth{
    self->_params_maxwidth = params_maxwidth;
    if (!params_maxwidth&&[self.properties.allKeys containsObject:@"maxwidth"]) {
        [self.properties removeObjectForKey:@"maxwidth"];
    }else{
        [self.properties setObject:@(params_maxwidth) forKey:@"maxwidth"];
    }
}
-(void)setParams_omit_script:(bool)params_omit_script{
    self->_params_omit_script = params_omit_script;
    if (!params_omit_script&&[self.properties.allKeys containsObject:@"omit_script"]) {
        [self.properties removeObjectForKey:@"omit_script"];
    }else{
        [self.properties setObject:@(params_omit_script) forKey:@"omit_script"];
    }
}
-(void)setParams_related:(MATwitterRelated)params_related{
    self->_params_related = params_related;
    if (!params_related&&[self.properties.allKeys containsObject:@"related"]) {
        [self.properties removeObjectForKey:@"related"];
    }else{
        [self.properties setObject:[self getRelated:params_related] forKey:@"related"];
    }
}
-(void)setParams_url:(NSString *)params_url{
    self->_params_url = params_url;
    NSLog(@"%@",params_url);
    if (!params_url) {
        if ([self.properties.allKeys containsObject:@"url"]) {
            [self.properties removeObjectForKey:@"url"];
        }
    }else{
        [self.properties setObject:params_url forKey:@"url"];
    }
}

-(NSString *)getRelated:(MATwitterRelated)related{
    NSDictionary *dict = @{
                           @(MATwitterRelatedTwitter): @"twitter",
                           @(MATwitterRelatedTwitterapi): @"twitterapi",
                           @(MATwitterRelatedTwittermedia): @"twittermedia",
                           };
    return dict[@(related)];
}

-(NSString *)getAlignment:(MATwitterAlignment)alignment{
    NSDictionary *dict = @{
                           @(MATwitterAlignmentCenter): @"center",
                           @(MATwitterAlignmentLeft): @"left",
                           @(MATwitterAlignmentNone): @"none",
                           @(MATwitterAlignmentRight): @"right",
                           };
    return dict[@(alignment)];
}

@end