//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Matt Larkin on 3/10/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//


#import "ResultsViewController.h"


@interface ResultsViewController ()

@property (strong, nonatomic) IBOutlet UITextView *resultsTextView;



@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //hide back nav button
    [self.navigationItem setHidesBackButton:YES];
    //calls helper method for adlib
    self.resultsTextView.attributedText = [self createAdlib];

//self.resultsTextView.text = [NSString stringWithFormat:@"%@ got eaten by the %@ zombie called %@ quite %@!", self.name, self.adjective, self.adverb, self.noun];
   // NSLog(self.resultsTextView.text);
}

# pragma Helper Arguments

//Sets the attributes for the user defined text
-(NSAttributedString *)makeBoldAttributed:(NSString *)replacedString{
    UIFont *boldFont = [UIFont fontWithName:@"Helvetica-Bold" size:18.0];
    NSAttributedString *atString = [[NSAttributedString alloc] initWithString:replacedString attributes:@{NSFontAttributeName:boldFont}];

    return atString;

}

//
-(NSAttributedString *)makeSimpleAttributed:(NSString *)replacedString{
    UIFont *font = [UIFont fontWithName:@"Helvetica" size:18.0];
    NSAttributedString *atString = [[NSAttributedString alloc] initWithString:replacedString attributes:@{NSFontAttributeName:font}];

    return atString;
}



//Name: createAdlib
//returns: NSMutableAttributedString *
//takes: nothing
//description: append all of the attributed strings created by the helper methods makeAttributed and makeAttributedSimple
-(NSMutableAttributedString *)createAdlib {


    NSMutableAttributedString *adlib = [[NSMutableAttributedString alloc]initWithAttributedString:[self makeSimpleAttributed:@"Run "]];
    [adlib appendAttributedString:[self makeBoldAttributed:self.name]];
    [adlib appendAttributedString:[self makeSimpleAttributed:@"!"]];
    [adlib appendAttributedString:[self makeSimpleAttributed:@" You have just been spotted by a "]];
    [adlib appendAttributedString:[self makeBoldAttributed:self.adjective]];
    [adlib appendAttributedString:[self makeSimpleAttributed:@" zombie who wants to "]];
    [adlib appendAttributedString:[self makeBoldAttributed:self.adverb]];
    [adlib appendAttributedString:[self makeSimpleAttributed:@" you. \n"]];
    [adlib appendAttributedString:[self makeSimpleAttributed:@" Your only hope is " ]];
    [adlib appendAttributedString:[self makeBoldAttributed:self.noun]];
    [adlib appendAttributedString:[self makeSimpleAttributed:@" to save you."]];
    
    return adlib;

}

@end
