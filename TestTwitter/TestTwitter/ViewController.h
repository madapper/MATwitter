//
//  ViewController.h
//  TestTwitter
//
//  Created by Paul Napier on 29/08/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>
#import <Accounts/Accounts.h>

#import "MATwitter.h"

@interface ViewController : UIViewController{
    int intRadius;
    int count;
}

@property (nonatomic, retain) ACAccountStore *accountStore;

@property (nonatomic, retain) NSDictionary *returnedDictionary;
@property (nonatomic, retain) NSMutableArray *tweets;

@end
