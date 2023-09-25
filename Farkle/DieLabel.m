//
//  DieLabel.m
//  Farkle
//
//  Created by Matt Larkin on 3/19/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import "DieLabel.h"
#import "ViewController.h"

@implementation DieLabel

-(IBAction)onTapped:(UITapGestureRecognizer *)sender {
    
}

-(void)roll {
    int randomNum = (arc4random() % 6 ) + 1;
    self.text = [NSString stringWithFormat:@"%d", randomNum];
}


@end
