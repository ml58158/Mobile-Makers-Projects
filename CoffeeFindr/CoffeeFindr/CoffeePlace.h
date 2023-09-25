//
//  CoffeePlace.h
//  CoffeeFindr
//
//  Created by Matt Larkin on 3/7/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface CoffeePlace : NSObject

@property MKMapItem *mapItem;
@property float milesDifference;

@end
