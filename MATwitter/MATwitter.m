//
//  MATwitter.m
//  TestTwitter
//
//  Created by Paul Napier on 3/10/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import "MATwitter.h"

@implementation MATwitter


-(id)init{
    self = [super init];
    if (self) {
        accountStore = [[ACAccountStore alloc] init];
    }
    return self;
}

- (BOOL)userHasAccessToTwitter
{
    return [SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter];
}

+(void)getDataWithTwitterObject:(MATwitterGetObject *)object completion:(void (^)(NSObject *object))completion{
    MATwitter *maTwitter = [MATwitter new];
    [maTwitter getDataWithTwitterObject:object completion:^(NSObject *object) {
        completion(object);
    }];
}

-(NSString *)getURL:(MATwitterGetObject *)object{
    NSDictionary *dict = @{
                           [[MATwitterTimelineMentions class]copy]: @"https://api.twitter.com/1.1/statuses/mentions_timeline.json",
                           [[MATwitterTimelineUser class]copy]: @"https://api.twitter.com/1.1/statuses/user_timeline.json",
                           [[MATwitterTimelineHome class]copy]: @"https://api.twitter.com/1.1/statuses/home_timeline.json",
                           [[MATwitterTimelineRetweetsOfMe class]copy]: @"https://api.twitter.com/1.1/statuses/retweets_of_me.json",
                           [[MATwitterTweetsRetweets class]copy]: @"https://api.twitter.com/1.1/statuses/retweets/:id.json",
                           [[MATwitterTweetsShow class]copy]: @"https://api.twitter.com/1.1/statuses/show/:id.json",
                           [[MATwitterTweetsDestroy class]copy]: @"https://api.twitter.com/1.1/statuses/destroy/:id.json",
                           [[MATwitterTweetsUpdate class]copy]: @"https://api.twitter.com/1.1/statuses/update.json",
                           [[MATwitterTweetsRetweet class]copy]: @"https://api.twitter.com/1.1/statuses/retweet/:id.json",
                           [[MATwitterTweetsUpdateWithMedia class]copy]: @"https://api.twitter.com/1.1/statuses/update_with_media.json",
                           [[MATwitterTweetsOEmbed class]copy]: @"https://api.twitter.com/1.1/statuses/oembed.json",
                           [[MATwitterTweetsRetweeters class]copy]: @"https://api.twitter.com/1.1/statuses/retweeters/ids.json",
                           [[MATwitterSearchTweets class]copy]: @"https://api.twitter.com/1.1/search/tweets.json",
                           [[MATwitterStreamingFilter class]copy]: @"https://api.twitter.com/1.1/statuses/filter.json",
                           [[MATwitterStreamingSample class]copy]: @"https://api.twitter.com/1.1/statuses/sample.json",
                           [[MATwitterStreamingFirehose class]copy]: @"https://api.twitter.com/1.1/statuses/firehose.json",
                           [[MATwitterStreamingUser class]copy]: @"https://api.twitter.com/1.1/user.json",
                           [[MATwitterStreamingSite class]copy]: @"https://api.twitter.com/1.1/site.json",
                           [[MATwitterDirectMessagesInbox class]copy]: @"https://api.twitter.com/1.1/direct_messages.json",
                           [[MATwitterDirectMessagesSent class]copy]: @"https://api.twitter.com/1.1/direct_messages/sent.json",
                           [[MATwitterDirectMessagesShow class]copy]: @"https://api.twitter.com/1.1/direct_messages/show.json",
                           [[MATwitterDirectMessagesDestroy class]copy]: @"https://api.twitter.com/1.1/direct_messages/destroy.json",
                           [[MATwitterDirectMessagesNew class]copy]: @"https://api.twitter.com/1.1/direct_messages/new.json",
                           [[MATwitterFriendshipsNoRetweets class]copy]: @"https://api.twitter.com/1.1/friendships/no_retweets/ids.json",
                           [[MATwitterFriends class]copy]: @"https://api.twitter.com/1.1/friends/ids.json",
                           [[MATwitterFollowers class]copy]: @"https://api.twitter.com/1.1/followers/ids.json",
                           [[MATwitterFriendshipsLookup class]copy]: @"https://api.twitter.com/1.1/friendships/lookup.json",
                           [[MATwitterFriendshipsIncoming class]copy]: @"https://api.twitter.com/1.1/friendships/incoming.json",
                           [[MATwitterFriendshipsOutgoing class]copy]: @"https://api.twitter.com/1.1/friendships/outgoing.json",
                           [[MATwitterFriendshipsCreate class]copy]: @"https://api.twitter.com/1.1/friendships/create.json",
                           [[MATwitterFriendshipsDestroy class]copy]: @"https://api.twitter.com/1.1/friendships/destroy.json",
                           [[MATwitterFriendshipsUpdate class]copy]: @"https://api.twitter.com/1.1/friendships/update.json",
                           [[MATwitterFriendshipsShow class]copy]: @"https://api.twitter.com/1.1/friendships/show.json",
                           [[MATwitterFriendsList class]copy]: @"https://api.twitter.com/1.1/friends/list.json",
                           [[MATwitterFollowersList class]copy]: @"https://api.twitter.com/1.1/followers/list.json",
                           [[MATwitterAccountSettings class]copy]: @"https://api.twitter.com/1.1/account/settings.json",
                           [[MATwitterAccountVerifyCredentials class]copy]: @"https://api.twitter.com/1.1/account/verify_credentials.json",
                           [[MATwitterAccountSettingsPost class]copy]: @"https://api.twitter.com/1.1/account/settings.json",
                           [[MATwitterAccountUpdateDeliveryDevice class]copy]: @"https://api.twitter.com/1.1/account/update_delivery_device.json",
                           [[MATwitterAccountUpdateProfile class]copy]: @"https://api.twitter.com/1.1/account/update_profile.json",
                           [[MATwitterAccountUpdateProfileBackgroundImage class]copy]: @"https://api.twitter.com/1.1/account/update_profile_background_image.json",
                           [[MATwitterAccountUpdateProfileColors class]copy]: @"https://api.twitter.com/1.1/account/update_profile_colors.json",
                           [[MATwitterAccountUpdateProfileImage class]copy]: @"https://api.twitter.com/1.1/account/update_profile_image.json",
                           [[MATwitterBlocksList class]copy]: @"https://api.twitter.com/1.1/blocks/list.json",
                           [[MATwitterBlocksIds class]copy]: @"https://api.twitter.com/1.1/blocks/ids.json",
                           [[MATwitterBlocksCreate class]copy]: @"https://api.twitter.com/1.1/blocks/create.json",
                           [[MATwitterBlocksDestroy class]copy]: @"https://api.twitter.com/1.1/blocks/destroy.json",
                           [[MATwitterUsersLookup class]copy]: @"https://api.twitter.com/1.1/users/lookup.json",
                           [[MATwitterUsersShow class]copy]: @"https://api.twitter.com/1.1/users/show.json",
                           [[MATwitterUsersSearch class]copy]: @"https://api.twitter.com/1.1/users/search.json",
                           [[MATwitterUsersContributees class]copy]: @"https://api.twitter.com/1.1/users/contributees.json",
                           [[MATwitterUsersContributors class]copy]: @"https://api.twitter.com/1.1/users/contributors.json",
                           [[MATwitterAccountRemoveProfileBanner class]copy]: @"https://api.twitter.com/1.1/account/remove_profile_banner.json",
                           [[MATwitterAccountUpdateProfileBanner class]copy]: @"https://api.twitter.com/1.1/account/update_profile_banner.json",
                           [[MATwitterUsersProfileBanner class]copy]: @"https://api.twitter.com/1.1/users/profile_banner.json",
                           [[MATwitterSuggestionsCategory class]copy]: @"https://api.twitter.com/1.1/users/suggestions/:slug.json",
                           [[MATwitterSuggestionsList class]copy]: @"https://api.twitter.com/1.1/users/suggestions.json",
                           [[MATwitterSuggestionsCategoryMembers class]copy]: @"https://api.twitter.com/1.1/users/suggestions/:slug/members.json",
                           [[MATwitterFavouritesList class]copy]: @"https://api.twitter.com/1.1/favorites/list.json",
                           [[MATwitterFavouritesDestroy class]copy]: @"https://api.twitter.com/1.1/favorites/destroy.json",
                           [[MATwitterFavouritesCreate class]copy]: @"https://api.twitter.com/1.1/favorites/create.json",
                           [[MATwitterListsList class]copy]: @"https://api.twitter.com/1.1/lists/list.json",
                           [[MATwitterListsStatuses class]copy]: @"https://api.twitter.com/1.1/lists/statuses.json",
                           [[MATwitterListsMembersDestroy class]copy]: @"https://api.twitter.com/1.1/lists/members/destroy.json",
                           [[MATwitterListsMemberships class]copy]: @"https://api.twitter.com/1.1/lists/memberships.json",
                           [[MATwitterListsSubscribers class]copy]: @"https://api.twitter.com/1.1/lists/subscribers.json",
                           [[MATwitterListsSubscribersCreate class]copy]: @"https://api.twitter.com/1.1/lists/subscribers/create.json",
                           [[MATwitterListsSubscribersShow class]copy]: @"https://api.twitter.com/1.1/lists/subscribers/show.json",
                           [[MATwitterListsSubscribersDestroy class]copy]: @"https://api.twitter.com/1.1/lists/subscribers/destroy.json",
                           [[MATwitterListsMembersCreateAll class]copy]: @"https://api.twitter.com/1.1/lists/members/create_all.json",
                           [[MATwitterListsMembersShow class]copy]: @"https://api.twitter.com/1.1/lists/members/show.json",
                           [[MATwitterListsMembers class]copy]: @"https://api.twitter.com/1.1/lists/members.json",
                           [[MATwitterListsMembersCreate class]copy]: @"https://api.twitter.com/1.1/lists/members/create.json",
                           [[MATwitterListsDestroy class]copy]: @"https://api.twitter.com/1.1/lists/destroy.json",
                           [[MATwitterListsUpdate class]copy]: @"https://api.twitter.com/1.1/lists/update.json",
                           [[MATwitterListsCreate class]copy]: @"https://api.twitter.com/1.1/lists/create.json",
                           [[MATwitterListsShow class]copy]: @"https://api.twitter.com/1.1/lists/show.json",
                           [[MATwitterListsSubscriptions class]copy]: @"https://api.twitter.com/1.1/lists/subscriptions.json",
                           [[MATwitterListsMembersDestroyAll class]copy]: @"https://api.twitter.com/1.1/lists/members/destroy_all.json",
                           [[MATwitterListsOwnerships class]copy]: @"https://api.twitter.com/1.1/lists/ownerships.json",
                           [[MATwitterSavedSearchesList class]copy]: @"https://api.twitter.com/1.1/saved_searches/list.json",
                           [[MATwitterSavedSearchesShow class]copy]: @"https://api.twitter.com/1.1/saved_searches/show/:id.json",
                           [[MATwitterSavedSearchesCreate class]copy]: @"https://api.twitter.com/1.1/saved_searches/create.json",
                           [[MATwitterSavedSearchesDestroy class]copy]: @"https://api.twitter.com/1.1/saved_searches/destroy/:id.json",
                           [[MATwitterGeoPlaceId class]copy]: @"https://api.twitter.com/1.1/geo/id/:place_id.json",
                           [[MATwitterGeoReverseGeocode class]copy]: @"https://api.twitter.com/1.1/geo/reverse_geocode.json",
                           [[MATwitterGeoSearch class]copy]: @"https://api.twitter.com/1.1/geo/search.json",
                           [[MATwitterGeoSimilarPlaces class]copy]: @"https://api.twitter.com/1.1/geo/similar_places.json",
                           [[MATwitterGeoPlace class]copy]: @"https://api.twitter.com/1.1/geo/place.json",
                           [[MATwitterTrendsPlace class]copy]: @"https://api.twitter.com/1.1/trends/place.json",
                           [[MATwitterTrendsAvailable class]copy]: @"https://api.twitter.com/1.1/trends/available.json",
                           [[MATwitterTrendsAvailable class]copy]: @"https://api.twitter.com/1.1/trends/closest.json",
                           [[MATwitterReportSpam class]copy]: @"https://api.twitter.com/1.1/users/report_spam.json",
                           [[MATwitterOAuthAuthenticate class]copy]: @"https://api.twitter.com/1.1/oauth/authenticate.json",
                           [[MATwitterOAuthAuthorize class]copy]: @"https://api.twitter.com/1.1/oauth/authorize.json",
                           [[MATwitterOAuthAccessToken class]copy]: @"https://api.twitter.com/1.1/oauth/access_token.json",
                           [[MATwitterOAuthRequestToken class]copy]: @"https://api.twitter.com/1.1/oauth/request_token.json",
                           [[MATwitterOAuth2Token class]copy]: @"https://api.twitter.com/1.1/oauth2/token.json",
                           [[MATwitterOAuth2InvalidateToken class]copy]: @"https://api.twitter.com/1.1/oauth2/invalidate_token.json",
                           [[MATwitterHelpConfiguration class]copy]: @"https://api.twitter.com/1.1/help/configuration.json",
                           [[MATwitterHelpLanguages class]copy]: @"https://api.twitter.com/1.1/help/languages.json",
                           [[MATwitterHelpPrivacy class]copy]: @"https://api.twitter.com/1.1/help/privacy.json",
                           [[MATwitterHelpTermsOfService class]copy]: @"https://api.twitter.com/1.1/help/tos.json",
                           [[MATwitterApplicationRateLimitStatus class]copy]: @"https://api.twitter.com/1.1/application/rate_limit_status.json",
                           };
    return [dict objectForKey:[object class]];
}

-(void)getDataWithTwitterObject:(MATwitterGetObject *)object completion:(void (^)(NSObject *object))completion{
    
    if ([self userHasAccessToTwitter]) {
        ACAccountType *twitterAccountType = [accountStore accountTypeWithAccountTypeIdentifier: ACAccountTypeIdentifierTwitter];
        [accountStore requestAccessToAccountsWithType:twitterAccountType options:NULL completion:^(BOOL granted, NSError *error)
         {
             if (granted)
             {
                 NSArray *twitterAccounts = [accountStore accountsWithAccountType:twitterAccountType];
                 
                 NSString *strURL = [self getURL:object];
                 
                 if ([strURL rangeOfString:@":id"].location<strURL.length) {
                     strURL = [strURL stringByReplacingOccurrencesOfString:@":id" withString:object.properties[@"id"]];
                 }
                 
                 if ([strURL rangeOfString:@":slug"].location<strURL.length) {
                     strURL = [strURL stringByReplacingOccurrencesOfString:@":slug" withString:object.properties[@"slug"]];
                 }
                 
                 NSURL *url = [NSURL URLWithString:strURL];
                 
                 
                 
                 NSDictionary *params = object.properties;
                 
                 NSString *logString = @"";
                 for (int a = 0; a<params.count; a++) {
                     if (a>0) {
                         logString = [logString stringByAppendingString:@"&"];
                     }
                     logString = [logString stringByAppendingString:[NSString stringWithFormat:@"%@=%@",params.allKeys[a],params.allValues[a]]];
                 }
                 
                 NSLog(@"%@?%@",strURL,logString);
                 
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
                                  completion(timelineData);
//                                  NSLog(@"%@",timelineData);
                              }
                              else {
                                  completion(jsonError);
//                                  NSLog(@"JSON Error: %@", [jsonError localizedDescription]);
                              }
                          }
                          else {
                              completion(urlResponse);
//                              NSLog(@"Response Error: %d", urlResponse.statusCode);
                          }
                      }else{
                          completion(@"No data");
//                          NSLog(@"No data");
                      }
                  }];
             }
             else {
                 completion(error);
//                 NSLog(@"%@", [error localizedDescription]);
             }
         
         
         }];
    }
}

-(NSString *)escapedString:(NSString *)string{
    return (__bridge NSString *)CFURLCreateStringByAddingPercentEscapes(NULL, (__bridge CFStringRef)string, NULL, (CFStringRef)@"!*'();:@&=+$,/?%#[] -", kCFStringEncodingUTF8);
}
@end
