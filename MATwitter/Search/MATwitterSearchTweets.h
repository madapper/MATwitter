//
//  MATwitterSearchTweets.h
//  TestTwitter
//
//  Created by Paul Napier on 3/10/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import "MATwitterGetObject.h"

#import "MATwitterLanguages.h"
#import "MATwitterLocation.h"

typedef enum{
    MATwitterResultTypeMixed, //mixed: Include both popular and real time results in the response.
    MATwitterResultTypeRecent, //recent: return only the most recent results in the response
    MATwitterResultTypePopular //popular: return only the most popular results in the response.
}MATwitterResultType;

@interface MATwitterSearchTweets : MATwitterGetObject

@property (nonatomic, retain) NSString *params_q; // Required
@property (nonatomic, retain) MATwitterLocation *params_geocode;
@property (nonatomic) MATwitterLanguage params_lang;
@property (nonatomic) MATwitterResultType params_result_type;
@property (nonatomic) int params_count;
@property (nonatomic, retain) NSString *params_until; // YYYY-MM-DD
@property (nonatomic) int params_since_id;
@property (nonatomic) int params_max_id;
@property (nonatomic) bool params_include_entities;

-(id)initWithQuery:(NSString *)params_q;

@end
