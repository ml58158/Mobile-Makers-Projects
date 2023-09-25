//
//  ViewController.m
//  TicTacToe
//
//  Created by Matt Larkin on 3/12/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *squareOne;
@property (strong, nonatomic) IBOutlet UILabel *squareTwo;
@property (strong, nonatomic) IBOutlet UILabel *squareThree;
@property (strong, nonatomic) IBOutlet UILabel *squareFour;
@property (strong, nonatomic) IBOutlet UILabel *squareFive;
@property (strong, nonatomic) IBOutlet UILabel *squareSix;
@property (strong, nonatomic) IBOutlet UILabel *squareSeven;
@property (strong, nonatomic) IBOutlet UILabel *squareEight;
@property (strong, nonatomic) IBOutlet UILabel *squareNine;
@property (strong, nonatomic) IBOutlet UILabel *whichPlayerLabel;
@property CGPoint userTap;


@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];


    }

// Find Player
- (UILabel*)findLabelUsingPoint:(CGPoint)point
{

//  Check if userTap is in label one and label one is unused. Increment player if tapped.
    if (CGRectContainsPoint(self.squareOne.frame, self.userTap))
    {
        if ([self.whichPlayerLabel.text isEqualToString:@"Player A - X"] && [self.squareOne.text isEqualToString:@"[    ]"])
        {
            self.squareOne.text = @"X";
            self.squareOne.textColor = [UIColor blueColor];
            self.whichPlayerLabel.text = @"Player B - O";
            return self.squareOne;

        }
        if ([self.whichPlayerLabel.text isEqualToString:@"Player B - O"] && [self.squareOne.text isEqualToString:@"[    ]"])
        {
            self.squareOne.text = @"O";
            self.squareOne.textColor = [UIColor redColor];
            self.whichPlayerLabel.text = @"Player A - X";
            return self.squareOne;
        }
    }
//Square Two
    if (CGRectContainsPoint(self.squareTwo.frame, self.userTap))
    {
        if ([self.whichPlayerLabel.text isEqualToString:@"Player A - X"] && [self.squareTwo.text isEqualToString:@"[    ]"])
        {
            self.squareTwo.text = @"X";
            self.squareTwo.textColor = [UIColor blueColor];
            self.whichPlayerLabel.text = @"Player B - O";
            return self.squareTwo;

        }
        if ([self.whichPlayerLabel.text isEqualToString:@"Player B - O"] && [self.squareTwo.text isEqualToString:@"[    ]"])
        {
            self.squareTwo.text = @"O";
            self.squareTwo.textColor = [UIColor redColor];
            self.whichPlayerLabel.text = @"Player A - X";
            return self.squareTwo;
        }
    }

//Square Three
    if (CGRectContainsPoint(self.squareThree.frame, self.userTap))
    {
        if ([self.whichPlayerLabel.text isEqualToString:@"Player A - X"] && [self.squareOne.text isEqualToString:@"[    ]"])
        {
            self.squareThree .text = @"X";
            self.squareThree.textColor = [UIColor blueColor];
            self.whichPlayerLabel.text = @"Player B - O";
            return self.squareThree;

        }

    if ([self.whichPlayerLabel.text isEqualToString:@"Player B - O"] && [self.squareThree.text isEqualToString:@"[    ]"])
        {
            self.squareThree.text = @"O";
            self.squareThree.textColor = [UIColor redColor];
            self.whichPlayerLabel.text = @"Player A - X";
            return self.squareThree;
        }
    }
//Square Four
    if (CGRectContainsPoint(self.squareFour.frame, self.userTap))
    {
        if ([self.whichPlayerLabel.text isEqualToString:@"Player A - X"] && [self.squareFour.text isEqualToString:@"[    ]"])
        {
            self.squareFour.text = @"X";
            self.squareFour.textColor = [UIColor blueColor];
            self.whichPlayerLabel.text = @"Player B - O";
            return self.squareFour;

        }
        if ([self.whichPlayerLabel.text isEqualToString:@"Player B - O"] && [self.squareFour.text isEqualToString:@"[    ]"])
        {
            self.squareFour.text = @"O";
            self.squareFour.textColor = [UIColor redColor];
            self.whichPlayerLabel.text = @"Player A - X";
            return self.squareFour;
        }
    }
//Square Five
    if (CGRectContainsPoint(self.squareFive.frame, self.userTap))
    {
        if ([self.whichPlayerLabel.text isEqualToString:@"Player A - X"] && [self.squareFive.text isEqualToString:@"[    ]"])
        {
            self.squareFive.text = @"X";
            self.squareFive.textColor = [UIColor blueColor];
            self.whichPlayerLabel.text = @"Player B - O";
            return self.squareFive;

        }
        if ([self.whichPlayerLabel.text isEqualToString:@"Player B - O"] && [self.squareFive.text isEqualToString:@"[    ]"])
        {
            self.squareFive.text = @"O";
            self.squareFive.textColor = [UIColor redColor];
            self.whichPlayerLabel.text = @"Player A - X";
            return self.squareFive;
        }
    }

    //Square Six
    if (CGRectContainsPoint(self.squareSix.frame, self.userTap))
    {
        if ([self.whichPlayerLabel.text isEqualToString:@"Player A - X"] && [self.squareSix.text isEqualToString:@"[    ]"])
        {
            self.squareSix.text = @"X";
            self.squareSix.textColor = [UIColor blueColor];
            self.whichPlayerLabel.text = @"Player B - O";
            return self.squareSix;

        }
        if ([self.whichPlayerLabel.text isEqualToString:@"Player B - O"] && [self.squareSix.text isEqualToString:@"[    ]"])
        {
            self.squareSix.text = @"O";
            self.squareSix.textColor = [UIColor redColor];
            self.whichPlayerLabel.text = @"Player A - X";
            return self.squareSix;
        }
    }

    //Square Seven
    if (CGRectContainsPoint(self.squareSeven.frame, self.userTap))
    {
        if ([self.whichPlayerLabel.text isEqualToString:@"Player A - X"] && [self.squareSeven.text isEqualToString:@"[    ]"])
        {
            self.squareSeven.text = @"X";
            self.squareSeven.textColor = [UIColor blueColor];
            self.whichPlayerLabel.text = @"Player B - O";
            return self.squareSeven;

        }
        if ([self.whichPlayerLabel.text isEqualToString:@"Player B - O"] && [self.squareSeven.text isEqualToString:@"[    ]"])
        {
            self.squareSeven.text = @"O";
            self.squareSeven.textColor = [UIColor redColor];
            self.whichPlayerLabel.text = @"Player A - X";
            return self.squareSeven;
        }
    }


    //Square Eight
    if (CGRectContainsPoint(self.squareEight.frame, self.userTap))
    {
        if ([self.whichPlayerLabel.text isEqualToString:@"Player A - X"] && [self.squareEight.text isEqualToString:@"[    ]"])
        {
            self.squareEight.text = @"X";
            self.squareEight.textColor = [UIColor blueColor];
            self.whichPlayerLabel.text = @"Player B - O";
            return self.squareEight;

        }
        if ([self.whichPlayerLabel.text isEqualToString:@"Player B - O"] && [self.squareEight.text isEqualToString:@"[    ]"])
        {
            self.squareEight.text = @"O";
            self.squareEight.textColor = [UIColor redColor];
            self.whichPlayerLabel.text = @"Player A - X";
            return self.squareEight;
        }
    }


    //Square Nine
    if (CGRectContainsPoint(self.squareNine.frame, self.userTap))
    {
        if ([self.whichPlayerLabel.text isEqualToString:@"Player A - X"] && [self.squareNine.text isEqualToString:@"[    ]"])
        {
            self.squareNine.text = @"X";
            self.squareNine.textColor = [UIColor blueColor];
            self.whichPlayerLabel.text = @"Player B - O";
            return self.squareNine;

        }
        if ([self.whichPlayerLabel.text isEqualToString:@"Player B - O"] && [self.squareNine.text isEqualToString:@"[    ]"])
        {
            self.squareNine.text = @"O";
            self.squareNine.textColor = [UIColor redColor];
            self.whichPlayerLabel.text = @"Player A - X";
            return self.squareNine;
        }
    }

    - (IBAction)onLabelTapped:(UITapGestureRecognizer *)tapGestureRecongizer {

    [self findLabelUsingPoint:point];
};








@end
