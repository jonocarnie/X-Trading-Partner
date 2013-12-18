//
//  JCNewStationDetailsTableViewController.m
//  X-Trading Partner
//
//  Created by Jonathan Carnie on 18/12/2013.
//  Copyright (c) 2013 Jonathan Carnie. All rights reserved.
//

#import "JCNewStationDetailsTableViewController.h"

@interface JCNewStationDetailsTableViewController ()

@end

@implementation JCNewStationDetailsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.stationEntryField becomeFirstResponder];
}


-(IBAction)cancel
{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}


-(IBAction)done{
    NSLog(@"Contents of the text field: %@", self.stationEntryField.text);
    
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}
@end
