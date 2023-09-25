//
//  DrinkTableViewCell.m
//  HappyLunch
//
//  Created by Matt Larkin on 3/18/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import "DrinkTableViewCell.h"

@implementation DrinkTableViewCell

- (IBAction)onDrinkItemTapped:(id)sender {

    [self.delegate drinkTableViewCell:self didTapButton:sender];
}

@end
