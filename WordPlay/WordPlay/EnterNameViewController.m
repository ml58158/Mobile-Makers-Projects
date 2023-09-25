//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by Matt Larkin on 3/10/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "EnterNameViewController.h"

@interface EnterNameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //Hide back nav button
    [self.navigationItem setHidesBackButton:YES];
}

// Checks to see if the name text field is blank.
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if (self.nameTextField.text.length == 0) {
        return NO; }
        else {
            return YES;
    }



}
//Segues to next view controller
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    EnterAdjectiveViewController *enterAdjectiveViewController = segue.destinationViewController;
    enterAdjectiveViewController.name = self.nameTextField.text;
}



@end
