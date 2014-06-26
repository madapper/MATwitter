//
//  MATwitterShow.h
//  TestTwitter
//
//  Created by Paul Napier on 3/10/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import "MATwitterGetObject.h"

@interface MATwitterTweetsShow : MATwitterGetObject

@property (nonatomic, retain) NSString *params_id;
@property (nonatomic) bool params_trim_user;
@property (nonatomic) bool params_include_my_retweet;
@property (nonatomic) bool params_include_entities;

-(id)initWithID:(NSString *)params_id;

@end
