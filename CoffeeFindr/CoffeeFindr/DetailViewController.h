//
//  DetailViewController.h
//  CoffeeFindr
//
//  Created by Matt Larkin on 3/7/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoffeePlace.h"

@interface DetailViewController : UIViewController
@property CoffeePlace *coffeePlace;
@property CLLocation *currentLocation;

@end
