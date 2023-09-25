//
//  ViewController.m
//  HappyLunch
//
//  Created by Matt Larkin on 3/18/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import "ViewController.h"
#import "FoodTableViewCell.h"
#import "DrinkTableViewCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate,foodTableViewCellDelegate, drinkTableViewCellDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *selectedFoodImageView;
@property (strong, nonatomic) IBOutlet UIImageView *selectedDrinkImageView;


@end

@implementation ViewController

static NSString * const kFoodCell = @"FoodCell";
static NSString * const kDrinkCell = @"DrinkCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    if (indexPath.row == 0) {
        FoodTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kFoodCell];
        cell.delegate = self;
        return cell;
    } else {
        DrinkTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kDrinkCell];
        cell.delegate = self;
        return cell;
    }
}

- (void)foodTableViewCell:(id)cell didTapButton:(UIButton *)button {
    self.selectedFoodImageView.image = button.imageView.image;

}

- (void)drinkTableViewCell:(id)cell didTapButton:(UIButton *)button {
    self.selectedDrinkImageView.image = button.imageView.image;
}


@end
