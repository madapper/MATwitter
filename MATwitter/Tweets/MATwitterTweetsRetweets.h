//
//  MATwitterRetweets.h
//  TestTwitter
//
//  Created by Paul Napier on 3/10/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import "MATwitterGetObject.h"

@interface MATwitterTweetsRetweets : MATwitterGetObject

@property (nonatomic, retain) NSString *params_id; // required
@property (nonatomic) int params_count;
@property (nonatomic) bool params_trim_user;

-(id)initWithID:(NSString *)params_id;

@end
