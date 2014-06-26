//
//  MATwitterRetweeters.h
//  TestTwitter
//
//  Created by Paul Napier on 3/10/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import "MATwitterGetObject.h"

@interface MATwitterTweetsRetweeters : MATwitterGetObject

@property (nonatomic, retain) NSString *params_id; // required
@property (nonatomic) int params_cursor;
@property (nonatomic) bool params_stringify_ids;
@property (nonatomic) int params_count;

-(id)initWithID:(NSString *)params_id;

@end
