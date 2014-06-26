//
//  MATwitterLocation.h
//  TestTwitter
//
//  Created by Paul Napier on 3/10/13.
//  Copyright (c) 2013 Paul Napier. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    MATwitterLocationKilometers,
    MATwitterLocationMiles
}MATwitterLocationMeasurement;

@interface MATwitterLocation : NSObject

@property (nonatomic) float lat;
@property (nonatomic) float lng;
@property (nonatomic) float radius;
@property (nonatomic) MATwitterLocationMeasurement measurement;

-(id)initWithLat:(float)lat lng:(float)lng radius:(float)radius measurement:(MATwitterLocationMeasurement)measurement;
-(NSString *)stringWithLat:(float)lat lng:(float)lng radius:(float)radius measurement:(MATwitterLocationMeasurement)measurement;
-(NSString *)stringLocation;

@end
