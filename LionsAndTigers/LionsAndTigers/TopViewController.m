//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Matt Larkin on 3/18/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

//#import "ViewController.h"
#import "TopViewController.h"
//#import "HUDViewController.h"
#import "CustomCollectionViewCell.h"

@interface TopViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@end

@implementation TopViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (IBAction)onTopRevealButtonTapped:(UIBarButtonItem *)sender
{
    [self.delegate topRevealButtonTapped];
}

#pragma mark - CellView Datasource

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.imageView.image = self.photosArray[indexPath.row];
    return cell;
}

/**
 *  NumberOfItemsInSection
 *
 *  @param collectionView Custom CollectionView
 *  @param section        number of items in cell section
 *
 *  @return photosArray Count
 */

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.photosArray.count;
}


@end
