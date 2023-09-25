//
//  VacationViewController.m
//  IntergalacticTravel
//
//  Created by Matt Larkin on 3/10/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import "VacationViewController.h"

@interface VacationViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *planetImageView;

@end

@implementation VacationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.planetImageView.image = self.planetImage;
    [self.navigationItem setHidesBackButton:YES];
}



@end
