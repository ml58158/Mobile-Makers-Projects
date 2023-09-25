//
//  AdverbViewController.m
//  WordPlay
//
//  Created by Matt Larkin on 3/10/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import "AdverbViewController.h"
#import "NounViewController.h"
#import "EnterAdjectiveViewController.h"

@interface AdverbViewController ()

@property (strong, nonatomic) IBOutlet UITextField *adverbTextField;
@end

@implementation AdverbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //hide back nav button
    [self.navigationItem setHidesBackButton:YES];
}


//Segue to next view controller
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    AdverbViewController *vc = segue.destinationViewController;
    vc.name = self.name;
    vc.adjective = self.adjective;
    vc.adverb = self.adverbTextField.text;

}

//Checks to see if the name text field is blank.
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if (self.adverbTextField.text.length == 0) {
        return NO; }
    else {
        return YES;
    }

}
@end
