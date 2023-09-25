//
//  ViewController.m
//  MCMS
//
//  Created by Matt Larkin on 3/17/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"
#import "CreatureViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UITextField *creatureTextField;
@property (strong, nonatomic) IBOutlet UITextField *descriptionTextField;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    MagicalCreature *creatureOne = [MagicalCreature new];
    MagicalCreature *creatureTwo = [MagicalCreature new];
    MagicalCreature *creatureThree = [MagicalCreature new];
    MagicalCreature *creatureFour = [MagicalCreature new];

    creatureOne.name = @"Smeagol";
    creatureTwo.name = @"Gollum";
    creatureThree.name = @"Tree Ent";
    creatureFour.name = @"Wraith";
    self.creatures = [NSMutableArray arrayWithObjects:creatureOne,creatureTwo,creatureThree,creatureFour, nil];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"CreatureCell"];
    MagicalCreature *creature = [self.creatures objectAtIndex:indexPath.row];
    cell.textLabel.text = creature.name;
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.creatures.count;
}


- (IBAction)onAddButtonPressed:(UIButton *)sender
{

    if ([self.creatureTextField.text length] > 0) {
         MagicalCreature *newCreature = [[MagicalCreature alloc] init];
         newCreature.name = self.creatureTextField.text;

        [self.creatures addObject:newCreature];

        [self.tableView reloadData];
         self.creatureTextField.text = nil;
        [self.creatureTextField resignFirstResponder];
}

}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

    if ([segue.identifier isEqualToString:@"ShowCreatureSegue"]) {
        CreatureViewController *destinationVC = (CreatureViewController *) segue.destinationViewController;

        NSIndexPath *selectedCellIndexPath = [self.tableView indexPathForSelectedRow];
        MagicalCreature *selectedCreature = [self.creatures objectAtIndex:selectedCellIndexPath.row];
        //destinationVC.creature = selectedCreature;

    }


}

@end
