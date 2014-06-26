//
//  MATwitterLanguages.m
//  TestTwitter
//
//  Created by Paul Napier on 3/10/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import "MATwitterLanguages.h"

@implementation MATwitterLanguages

+(NSString *)iso6391Code:(MATwitterLanguage)language{
    NSDictionary *languages = @{
                                @(MATwitterLanguageEnglish): @"en",
                                @(MATwitterLanguageFrench): @"fr",
                                @(MATwitterLanguageGerman): @"de",
                                @(MATwitterLanguageItalian): @"it",
                                @(MATwitterLanguageJapanese): @"ja",
                                @(MATwitterLanguageKorean): @"ko",
                                @(MATwitterLanguagePortuguese): @"pt",
                                @(MATwitterLanguageRussian): @"ru",
                                @(MATwitterLanguageSpanish): @"es",
                                @(MATwitterLanguageTurkish): @"tr",
                                };
    return languages[@(language)];
}

@end
