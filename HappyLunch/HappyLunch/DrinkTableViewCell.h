//
//  DrinkTableViewCell.h
//  HappyLunch
//
//  Created by Matt Larkin on 3/18/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol drinkTableViewCellDelegate <NSObject>

@optional

-(void)drinkTableViewCell:(id)cell didTapButton:(UIButton *)button;

@end

@interface DrinkTableViewCell : UITableViewCell

@property (nonatomic, assign) id <drinkTableViewCellDelegate> delegate;

@end
