//
//  ViewController.m
//  MinorityReport
//
//  Created by Matt Larkin on 3/12/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *theFutureLabel;
@property (strong, nonatomic) IBOutlet UILabel *thePreCogsLabel;
@property CGPoint originalCenter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.originalCenter = self.theFutureLabel.center;



}
- (IBAction)panHandler:(UIPanGestureRecognizer *)gestureRecongizer
{

    if (gestureRecongizer.state == UIGestureRecognizerStateEnded) {
        //when gesture ends it starts animation block
        [UIView animateWithDuration:1.0 animations:^{
        self.theFutureLabel.center = self.originalCenter;
        }];
    }
else{
        //give the location a view to contextualize the gesture
    CGPoint point = [gestureRecongizer locationInView:self.view];
    self.theFutureLabel.center = point;

    if(CGRectContainsPoint(self.thePreCogsLabel.frame, point)) {
        //does the match to see if the rectangle is contsined by point's coordinates
        self.theFutureLabel.backgroundColor = [UIColor redColor];
        self.theFutureLabel.text = @"A Fictitious and Incriminating Future..";
        [self.theFutureLabel sizeToFit];

        }
    }

}

@end
