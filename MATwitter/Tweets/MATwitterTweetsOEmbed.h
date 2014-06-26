//
//  MATwitterOEmbed.h
//  TestTwitter
//
//  Created by Paul Napier on 3/10/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import "MATwitterGetObject.h"
#import "MATwitterLanguages.h"

typedef enum {
    MATwitterAlignmentLeft,
    MATwitterAlignmentRight,
    MATwitterAlignmentCenter,
    MATwitterAlignmentNone
}MATwitterAlignment;

typedef enum {
    MATwitterRelatedTwitterapi,
    MATwitterRelatedTwittermedia,
    MATwitterRelatedTwitter
}MATwitterRelated;

@interface MATwitterTweetsOEmbed : MATwitterGetObject

@property (nonatomic, retain) NSString *params_id; // required
@property (nonatomic, retain) NSString *params_url; // required
@property (nonatomic) int params_maxwidth;
@property (nonatomic) bool params_hide_media;
@property (nonatomic) bool params_hide_thread;
@property (nonatomic) bool params_omit_script;
@property (nonatomic) MATwitterAlignment params_align;
@property (nonatomic) MATwitterRelated params_related;
@property (nonatomic) MATwitterLanguage params_lang;

-(id)initWithID:(NSString *)params_id;
@end
