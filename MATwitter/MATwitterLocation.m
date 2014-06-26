//
//  MATwitterLocation.m
//  TestTwitter
//
//  Created by Paul Napier on 3/10/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import "MATwitterLocation.h"

@implementation MATwitterLocation

-(id)initWithLat:(float)lat lng:(float)lng radius:(float)radius measurement:(MATwitterLocationMeasurement)measurement{
    self = [super init];
    if (self) {
        self.lat = lat;
        self.lng = lng;
        self.radius = radius;
        self.measurement = measurement;
    }
    return self;
}

-(NSString *)stringWithLat:(float)lat lng:(float)lng radius:(float)radius measurement:(MATwitterLocationMeasurement)measurement{
    return [NSString stringWithFormat:@"%f,%f,%f%@",lat,lng,radius,((measurement==MATwitterLocationKilometers)?@"km":@"mi")];
}

-(NSString *)stringLocation{
    return [NSString stringWithFormat:@"%f,%f,%f%@",self.lat,self.lng,self.radius,((self.measurement==MATwitterLocationKilometers)?@"km":@"mi")];
}
@end
