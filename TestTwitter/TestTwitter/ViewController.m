//
//  ViewController.m
//  TestTwitter
//
//  Created by Paul Napier on 29/08/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    MATwitterTimelineMentions *object = [[MATwitterTimelineMentions alloc]init];
//    object.params_count = 2;
//    [MATwitter getDataWithTwitterObject:object];
    
//    MATwitterTimelineUser *object = [[MATwitterTimelineUser alloc]init];
//    object.params_count = 2;
//    [MATwitter getDataWithTwitterObject:object];
    
//    MATwitterTimelineHome *object = [[MATwitterTimelineHome alloc]init];
//    object.params_count = 2;
//    [MATwitter getDataWithTwitterObject:object];
    
//    MATwitterTimelineRetweetsOfMe *object = [[MATwitterTimelineRetweetsOfMe alloc]init];
//    object.params_count = 2;
//    [MATwitter getDataWithTwitterObject:object];
    
//    MATwitterTweetsRetweets *object = [[MATwitterTweetsRetweets alloc]initWithID:@"384884126207057921"];
//    [MATwitter getDataWithTwitterObject:object];

    MATwitterTweetsShow *object = [[MATwitterTweetsShow alloc]initWithID:@"450860666878832641"];
    [MATwitter getDataWithTwitterObject:object completion:^(NSObject *object) {
        NSLog(@"%@",object);
    }];
    
//    MATwitterTweetsOEmbed *object = [[MATwitterTweetsOEmbed alloc]initWithID:@"240192632003911681"];
//    [MATwitter getDataWithTwitterObject:object];
    
//    MATwitterTweetsRetweeters *object = [[MATwitterTweetsRetweeters alloc]initWithID:@"327473909412814850"];
//    [MATwitter getDataWithTwitterObject:object];
    
//    MATwitterSearchTweets *object = [[MATwitterSearchTweets alloc]initWithQuery:@"@wearesocialau"];
//    [MATwitter getDataWithTwitterObject:object completion:^(NSObject *object) {
//        NSLog(@"%@",object);
//    }];

    
//    MATwitter *twitter = [MATwitter new];
//    
//    MATwitterTrendsAvailable *object = [[MATwitterTrendsAvailable alloc]init];
//    
//    [twitter getDataWithTwitterObject:object completion:^(NSObject *object) {
//        
//        if ([object isKindOfClass:[NSDictionary class]]){
//            NSLog(@"%@",object.class);
//        }else if ([object isKindOfClass:[NSArray class]]) {
////            NSLog(@"%d",((NSArray *)object).count);
//            NSDictionary *region = ((NSArray *)object)[0];
//            if (region[@"woeid"]) {
//                MATwitterTrendsPlace *place = [[MATwitterTrendsPlace alloc]initWithWoeid:region[@"woeid"]];
//                [twitter getDataWithTwitterObject:place completion:^(NSObject *newObject) {
//                    NSLog(@"%@",newObject);
//                }];
//            }
//        }
//    }];
    
//    MATwitterTrendsPlace *place = [[MATwitterTrendsPlace alloc]initWithWoeid:@"1"];
//    [MATwitter getDataWithTwitterObject:place completion:^(NSObject *object) {
//        NSLog(@"%@",object);
//    }];
    
//    MATwitterTrendsPlace *object = [[MATwitterTrendsPlace alloc]initWithWoeid:@"1"];
//    [MATwitter getDataWithTwitterObject:object];
    
//	// Do any additional setup after loading the view, typically from a nib.
//    self.tweets = [[NSMutableArray alloc]init];
//    self.accountStore = [[ACAccountStore alloc] init];
//    count = 1;
//    intRadius = 5;
//    
//    for (int a = 1; a<=intRadius; a++) {
//        [self searchByLat:-33.887384 lng:151.201524 radius:a searchTerm:@"pizza"];
//    }
//    NSLog(@"%d",self.tweets.count);

}

-(void)next:(NSString *)nextId{
    MATwitterTrendsPlace *place = [[MATwitterTrendsPlace alloc]initWithWoeid:nextId];
    [MATwitter getDataWithTwitterObject:place completion:^(NSObject *newObject) {
        NSLog(@"%@",newObject);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)userHasAccessToTwitter
{
    return [SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter];
}

- (void)searchByLat:(float)lat lng:(float)lng radius:(int)radius searchTerm:(NSString *)searchTerm
{
    
/*
 ╔═══════════════════════════════════╦═══════════════════════════════════════════════════════════════════════════╗
 ║             Operator              ║                              Finds tweets...                              ║
 ╠═══════════════════════════════════╬═══════════════════════════════════════════════════════════════════════════╣
 ║ twitter search                    ║ containing both "twitter" and "search". This is the default operator.     ║
 ║ "happy hour"                      ║ containing the exact phrase "happy hour".                                 ║
 ║ love OR hate                      ║ containing either "love" or "hate" (or both).                             ║
 ║ beer -root                        ║ containing "beer" but not "root".                                         ║
 ║ #haiku                            ║ containing the hashtag "haiku".                                           ║
 ║ from:alexiskold                   ║ sent from person "alexiskold".                                            ║
 ║ to:techcrunch                     ║ sent to person "techcrunch".                                              ║
 ║ @mashable                         ║ referencing person "mashable".                                            ║
 ║ "happy hour" near:"san francisco" ║ containing the exact phrase "happy hour" and sent near "san francisco".   ║
 ║ near:NYC within:15mi              ║ sent within 15 miles of "NYC".                                            ║
 ║ superhero since:2010-12-27        ║ containing "superhero" and sent since date "2010-12-27" (year-month-day). ║
 ║ ftw until:2010-12-27              ║ containing "ftw" and sent up to date "2010-12-27".                        ║
 ║ movie -scary :)                   ║ containing "movie", but not "scary", and with a positive attitude.        ║
 ║ flight :(                         ║ containing "flight" and with a negative attitude.                         ║
 ║ traffic ?                         ║ containing "traffic" and asking a question.                               ║
 ║ hilarious filter:links            ║ containing "hilarious" and linking to URLs.                               ║
 ║ news source:twitterfeed           ║ containing "news" and entered via TwitterFeed                             ║
 ╚═══════════════════════════════════╩═══════════════════════════════════════════════════════════════════════════╝
 */

    if ([self userHasAccessToTwitter]) {
        

        ACAccountType *twitterAccountType = [self.accountStore accountTypeWithAccountTypeIdentifier: ACAccountTypeIdentifierTwitter];
        [self.accountStore requestAccessToAccountsWithType:twitterAccountType options:NULL completion:^(BOOL granted, NSError *error)
        {
             if (granted)
             {
                 NSArray *twitterAccounts = [self.accountStore accountsWithAccountType:twitterAccountType];
                 
                 NSURL *url = [NSURL URLWithString:@"https://api.twitter.com/1.1/search/tweets.json"];
                 
                 
                 NSDictionary *params = @{
                                          @"q" : [self escapedString:searchTerm],
                                          @"geocode" : [NSString stringWithFormat:@"%f,%f,%dkm",lat,lng,radius],
                                          @"count" : @"100"
                                          };
                 SLRequest *request =
                 [SLRequest requestForServiceType:SLServiceTypeTwitter requestMethod:SLRequestMethodGET URL:url parameters:params];
                 
                 [request setAccount:[twitterAccounts lastObject]];
                 
                 [request performRequestWithHandler:^(NSData *responseData, NSHTTPURLResponse *urlResponse, NSError *error)
                 {
                     if (responseData) {
                         if (urlResponse.statusCode >= 200 && urlResponse.statusCode < 300) {
                             NSError *jsonError;
                             NSDictionary *timelineData = [NSJSONSerialization JSONObjectWithData:responseData options:NSJSONReadingAllowFragments error:&jsonError];
                             
                             if (timelineData) {
//                                 self.returnedDictionary = timelineData;
                                 [self.tweets addObject:timelineData];
                                 count++;
                                 if (count==intRadius) {
                                     NSLog(@"%d",self.tweets.count);
                                 }
                             }
                             else {
                                 NSLog(@"JSON Error: %@", [jsonError localizedDescription]);
                             }
                         }
                         else {
                             NSLog(@"The response status code is %d", urlResponse.statusCode);
                         }
                     }
                 }];
             }
             else {
                 NSLog(@"%@", [error localizedDescription]);
             }
         }];
    }
}

-(NSString *)escapedString:(NSString *)string{
    return (__bridge NSString *)CFURLCreateStringByAddingPercentEscapes(NULL, (__bridge CFStringRef)string, NULL, (CFStringRef)@"!*'();:@&=+$,/?%#[] -", kCFStringEncodingUTF8);
}
//
//-(NSDictionary *)findTweets:(NSDictionary *)dict{
//    
//    NSArray *array = dict[@"statuses"];
//    
//    NSMutableArray *complete = [[NSMutableArray alloc]init];
//    NSMutableArray *incomplete = [[NSMutableArray alloc]init];
//    
//    for (NSDictionary *tweetInfo in array) {
//        NSMutableDictionary *mDict = [[NSMutableDictionary alloc]initWithDictionary:tweetInfo];
//        
//        if (tweetInfo[@"geo"]!=[NSNull null]) {
////            NSLog(@"%@",tweetInfo[@"geo"]);
//            NSDictionary *scoreAlgorithm = @{
//                                             @"score_geo": @(3)
//                                             };
//            [mDict setObject:scoreAlgorithm forKey:@"score_algorithm"];
//            [complete addObject:mDict];
//        }else{
//            [incomplete addObject:mDict];
//        }
//    }
//    
//    NSDictionary *tweets = @{@"incomplete":incomplete,@"complete":complete};
//    
//    return tweets;
//}


@end
