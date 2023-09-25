//
//  RootViewController.m
//  LionsAndTigers
//
//  Created by Matt Larkin on 3/18/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import "RootViewController.h"
#import "TopViewController.h"
#import "HUDViewController.h"

@interface RootViewController () <TopDelegate, HUDDelegate>

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftTopConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightTopConstraint;
@property (strong, nonatomic) IBOutlet UIView *topViewContainer;
@property (strong, nonatomic) IBOutlet UIView *bottomViewController;

@property TopViewController *tvc;
@property HUDViewController *hvc;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    /**
     *  Declares View Controller Delegates on self
     */
    self.tvc.delegate = self;
    self.hvc.delegate = self;

}

#pragma mark - HUD Delegate

-(void)lionsButtonTapped
{
    /**
     *  Lion Pictures Array
     */
     self.lionArray = [NSMutableArray arrayWithObjects:
    [UIImage imageNamed:@"lion_1"],
    [UIImage imageNamed:@"lion_2"],
    [UIImage imageNamed:@"lion_3"],nil];

     self.tvc.photosArray = self.lionArray;
    [self.tvc.collectionView reloadData];
    [self topRevealButtonTapped];
}

-(void)tigersButtonTapped
{
    /**
     *  Tiger Pictures Array
     */

    self.tigerArray = [NSMutableArray arrayWithObjects:
    [UIImage imageNamed:@"tiger_1"],
    [UIImage imageNamed:@"tiger_2"],
    [UIImage imageNamed:@"tiger_3"],nil];

     self.tvc.photosArray = self.tigerArray;
    [self.tvc.collectionView reloadData];
    [self topRevealButtonTapped];


}


#pragma mark - TopDelegate /Menu Button


/**
 *  Logic for Menu Button
 */
-(void)topRevealButtonTapped
{
<<<<<<< HEAD
    [UIView animateWithDuration:0.5
                          delay:0.0
                        options: 0
                     animations:^{
                         if ([self.leftTopConstraint constant] == -16.0)
                         {
                             [self.leftTopConstraint setConstant:100.0];
                             [self.rightTopConstraint setConstant:-132.0];
                         }
                         else
                         {
                             [self.leftTopConstraint setConstant:-16.0];
                             [self.rightTopConstraint setConstant:-16.0];
                         }
                         [self.view layoutIfNeeded];
                     }
                     completion:^(BOOL finished){
                     }];
}


=======
    [UIView animateWithDuration:.5 animations:^{

        //the margin
        if (self.leftTopConstraint.constant == 0)
        {
            self.leftTopConstraint.constant += 100;
            self.rightTopConstraint.constant -= 100;
        }
        else
        {
            self.leftTopConstraint.constant = 0;
            self.rightTopConstraint.constant = 0;
        }

        [self.view layoutIfNeeded];
        
    }];
}

>>>>>>> 7ddb208c3781c1b69bfcedee3b160cd4534b0609
/**
 *  Prepares current view controller for segue into next.
 *
 *  @param segue  RootViewController
 *  @param sender Navigation View Controller or HUD View Controller
 */
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"navigationSegue"])
    {
        //Since segue actually goes to the navigation controller, need to get view controller from it
        UINavigationController *navControl = segue.destinationViewController;
        self.tvc = [navControl.viewControllers objectAtIndex:0];
    }
    else if ([segue.identifier isEqualToString:@"HUDSegue"])
    {
        self.hvc = segue.destinationViewController;
    }
}


@end
