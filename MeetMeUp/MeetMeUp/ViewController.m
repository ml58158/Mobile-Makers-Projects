//
//  ViewController.m
//  MeetMeUp
//
//  Created by Matt Larkin on 3/23/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property NSArray *eventsArray;
@property NSDictionary *resultsDict;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSURL *url = [NSURL URLWithString:@"https://api.meetup.com/2/open_events.json?zip=60604&text=mobile&time=,1w&key=477d1928246a4e162252547b766d3c6d"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];

    [NSURLConnection sendAsynchronousRequest:request
                                       queue:[NSOperationQueue mainQueue]
                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError)
     {
         self.resultsDict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&connectionError];

         self.eventsArray = [self.resultsDict objectForKey:@"results"];
         [self.tableView reloadData];
     }];
    NSLog(@"Huzzah!!");

}



#pragma mark - UI TableView Datasource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{ return self.eventsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MeetUpID"];
    NSDictionary *results = self.eventsArray[indexPath.row];
    //NSDictionary *name = results[@"name"];
    cell.textLabel.text = results[@"name"];
    cell.detailTextLabel.text = results[@"address_1"];
    return cell;
}


@end


#pragma mark - helper methods

