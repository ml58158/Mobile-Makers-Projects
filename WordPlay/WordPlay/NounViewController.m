//
//  NounViewController.m
//  WordPlay
//
//  Created by Matt Larkin on 3/10/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"
#import "NounViewController.h"
#import "ResultsViewController.h"

@interface NounViewController ()

@property (strong, nonatomic) IBOutlet UITextField *nounTextField;
@end

@implementation NounViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //hide back nav button
    [self.navigationItem setHidesBackButton:YES];
}


//Segue to next view controller
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NounViewController *vc = segue.destinationViewController;
    vc.name = self.name;
    vc.adjective = self.adjective;
    vc.adverb = self.adverb;
    vc.noun = self.nounTextField.text;
}

//Checks to see if the name text field is blank.
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if (self.nounTextField.text.length == 0) {
        return NO; }
    else {
        return YES;
    }
    
}

@end
