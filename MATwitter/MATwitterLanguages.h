//
//  MATwitterLanguages.h
//  TestTwitter
//
//  Created by Paul Napier on 3/10/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    MATwitterLanguagePortuguese,
    MATwitterLanguageItalian,
    MATwitterLanguageSpanish,
    MATwitterLanguageTurkish,
    MATwitterLanguageEnglish,
    MATwitterLanguageKorean,
    MATwitterLanguageFrench,
    MATwitterLanguageRussian,
    MATwitterLanguageGerman,
    MATwitterLanguageJapanese
}MATwitterLanguage;

@interface MATwitterLanguages : NSObject

+(NSString *)iso6391Code:(MATwitterLanguage)language;

@end
