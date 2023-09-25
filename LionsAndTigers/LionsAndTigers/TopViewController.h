//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Matt Larkin on 3/18/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol TopDelegate <NSObject>

@optional

//-(void)topRevealButtonTapped:(UIBarButtonItem *)button;
-(void)topRevealButtonTapped;

@end

@interface TopViewController : UIViewController

@property (nonatomic,assign)id <TopDelegate> delegate;

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property NSMutableArray *photosArray;
@end
