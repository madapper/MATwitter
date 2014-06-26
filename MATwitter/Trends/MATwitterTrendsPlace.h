//
//  MATwitterTrendsPlace.h
//  TestTwitter
//
//  Created by Paul Napier on 3/10/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import "MATwitterGetObject.h"

@interface MATwitterTrendsPlace : MATwitterGetObject

@property (nonatomic, retain) NSString *woeid;

-(id)initWithWoeid:(NSString *)woeid;

@end
