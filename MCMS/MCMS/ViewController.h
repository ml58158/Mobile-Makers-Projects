//
//  ViewController.h
//  MCMS
//
//  Created by Matt Larkin on 3/17/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property NSMutableArray *creatures;


- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section;

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section;
//-(instancetype)


@end

