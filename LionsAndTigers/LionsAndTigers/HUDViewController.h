//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by Matt Larkin on 3/18/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  Defines HUD Delegate
 */
@protocol HUDDelegate <NSObject>

-(void)tigersButtonTapped;
-(void)lionsButtonTapped;

@end

@interface HUDViewController : UIViewController

@property(nonatomic , assign)id <HUDDelegate> delegate;

@end
