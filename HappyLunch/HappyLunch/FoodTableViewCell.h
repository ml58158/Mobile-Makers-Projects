//
//  FoodTableViewCell.h
//  HappyLunch
//
//  Created by Matt Larkin on 3/18/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol foodTableViewCellDelegate <NSObject>

@optional

-(void)foodTableViewCell:(id)cell didTapButton:(UIButton *)button;

@end

@interface FoodTableViewCell : UITableViewCell

@property (nonatomic, assign) id <foodTableViewCellDelegate>delegate;


@end
