//
//  MATwitter.h
//  TestTwitter
//
//  Created by Paul Napier on 3/10/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Social/Social.h>
#import <Accounts/Accounts.h>

#import "MATwitterGetObject.h"
#import "MATwitterPostObject.h"

#import "MATwitterAccountRemoveProfileBanner.h"
#import "MATwitterAccountSettings.h"
#import "MATwitterAccountSettingsPost.h"
#import "MATwitterAccountUpdateDeliveryDevice.h"
#import "MATwitterAccountUpdateProfile.h"
#import "MATwitterAccountUpdateProfileBackgroundImage.h"
#import "MATwitterAccountUpdateProfileBanner.h"
#import "MATwitterAccountUpdateProfileColors.h"
#import "MATwitterAccountUpdateProfileImage.h"
#import "MATwitterAccountVerifyCredentials.h"
#import "MATwitterApplicationRateLimitStatus.h"
#import "MATwitterBlocksCreate.h"
#import "MATwitterBlocksDestroy.h"
#import "MATwitterBlocksIds.h"
#import "MATwitterBlocksList.h"
#import "MATwitterDirectMessagesDestroy.h"
#import "MATwitterDirectMessagesInbox.h"
#import "MATwitterDirectMessagesNew.h"
#import "MATwitterDirectMessagesSent.h"
#import "MATwitterDirectMessagesShow.h"
#import "MATwitterFavouritesCreate.h"
#import "MATwitterFavouritesDestroy.h"
#import "MATwitterFavouritesList.h"
#import "MATwitterFollowers.h"
#import "MATwitterFollowersList.h"
#import "MATwitterFriends.h"
#import "MATwitterFriendshipsCreate.h"
#import "MATwitterFriendshipsDestroy.h"
#import "MATwitterFriendshipsIncoming.h"
#import "MATwitterFriendshipsLookup.h"
#import "MATwitterFriendshipsNoRetweets.h"
#import "MATwitterFriendshipsOutgoing.h"
#import "MATwitterFriendshipsShow.h"
#import "MATwitterFriendshipsUpdate.h"
#import "MATwitterFriendsList.h"
#import "MATwitterGeoPlace.h"
#import "MATwitterGeoPlaceId.h"
#import "MATwitterGeoReverseGeocode.h"
#import "MATwitterGeoSearch.h"
#import "MATwitterGeoSimilarPlaces.h"
#import "MATwitterGetObject.h"
#import "MATwitterHelpConfiguration.h"
#import "MATwitterHelpLanguages.h"
#import "MATwitterHelpPrivacy.h"
#import "MATwitterHelpTermsOfService.h"
#import "MATwitterListsCreate.h"
#import "MATwitterListsDestroy.h"
#import "MATwitterListsList.h"
#import "MATwitterListsMembers.h"
#import "MATwitterListsMembersCreate.h"
#import "MATwitterListsMembersCreateAll.h"
#import "MATwitterListsMembersDestroy.h"
#import "MATwitterListsMembersDestroyAll.h"
#import "MATwitterListsMemberships.h"
#import "MATwitterListsMembersShow.h"
#import "MATwitterListsOwnerships.h"
#import "MATwitterListsShow.h"
#import "MATwitterListsStatuses.h"
#import "MATwitterListsSubscribers.h"
#import "MATwitterListsSubscribersCreate.h"
#import "MATwitterListsSubscribersDestroy.h"
#import "MATwitterListsSubscribersShow.h"
#import "MATwitterListsSubscriptions.h"
#import "MATwitterListsUpdate.h"
#import "MATwitterOAuth2InvalidateToken.h"
#import "MATwitterOAuth2Token.h"
#import "MATwitterOAuthAccessToken.h"
#import "MATwitterOAuthAuthenticate.h"
#import "MATwitterOAuthAuthorize.h"
#import "MATwitterOAuthRequestToken.h"
#import "MATwitterReportSpam.h"
#import "MATwitterSavedSearchesCreate.h"
#import "MATwitterSavedSearchesDestroy.h"
#import "MATwitterSavedSearchesList.h"
#import "MATwitterSavedSearchesShow.h"
#import "MATwitterSearchTweets.h"
#import "MATwitterStreamingFilter.h"
#import "MATwitterStreamingFirehose.h"
#import "MATwitterStreamingSample.h"
#import "MATwitterStreamingSite.h"
#import "MATwitterStreamingUser.h"
#import "MATwitterSuggestionsCategory.h"
#import "MATwitterSuggestionsCategoryMembers.h"
#import "MATwitterSuggestionsList.h"
#import "MATwitterTimelineHome.h"
#import "MATwitterTimelineMentions.h"
#import "MATwitterTimelineRetweetsOfMe.h"
#import "MATwitterTimelineUser.h"
#import "MATwitterTrendsAvailable.h"
#import "MATwitterTrendsClosest.h"
#import "MATwitterTrendsPlace.h"
#import "MATwitterTweetsDestroy.h"
#import "MATwitterTweetsOEmbed.h"
#import "MATwitterTweetsRetweet.h"
#import "MATwitterTweetsRetweeters.h"
#import "MATwitterTweetsRetweets.h"
#import "MATwitterTweetsShow.h"
#import "MATwitterTweetsUpdate.h"
#import "MATwitterTweetsUpdateWithMedia.h"
#import "MATwitterUsersContributees.h"
#import "MATwitterUsersContributors.h"
#import "MATwitterUsersLookup.h"
#import "MATwitterUsersProfileBanner.h"
#import "MATwitterUsersSearch.h"
#import "MATwitterUsersShow.h"

#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)


@interface MATwitter : NSObject{
    ACAccountStore *accountStore;
}

+(void)getDataWithTwitterObject:(MATwitterGetObject *)object completion:(void (^)(NSObject *object))completion;
-(void)getDataWithTwitterObject:(MATwitterGetObject *)object completion:(void (^)(NSObject *object))completion;

@end
