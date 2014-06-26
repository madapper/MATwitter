MATwitter
=========

A basic API for accessing twitter objects. This is a work in progress and I would really appreciate any feedback, suggestions and improvements to make it better.

The standard syntax is simple:

<pre>
#import <Social/Social.h>
#import <Accounts/Accounts.h>

#import "MATwitter.h"
</pre>

The call a class method as below:

<pre>
MATwitterTweetsShow *object = [[MATwitterTweetsShow alloc]initWithID:@"450860666878832641"];
    [MATwitter getDataWithTwitterObject:object completion:^(NSObject *object) {
        NSLog(@"%@",object);
    }];
</pre>


