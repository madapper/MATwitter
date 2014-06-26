//
//  MATwitterRetweetsOfMe.h
//  TestTwitter
//
//  Created by Paul Napier on 3/10/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import "MATwitterGetObject.h"

@interface MATwitterTimelineRetweetsOfMe : MATwitterGetObject

@property (nonatomic) int params_count;
@property (nonatomic) int params_since_id;
@property (nonatomic) int params_max_id;
@property (nonatomic) bool params_trim_user;
@property (nonatomic) bool params_include_entities;
@property (nonatomic) bool params_include_user_entities;

@end
