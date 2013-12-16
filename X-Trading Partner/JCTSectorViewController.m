//
//  JCTSectorViewController.m
//  X-Trading Partner
//
//  Created by Jonathan Carnie on 16/12/2013.
//  Copyright (c) 2013 Jonathan Carnie. All rights reserved.
//

#import "JCTSectorViewController.h"
#import "Sector.h"

@interface JCTSectorViewController ()

@end

@implementation JCTSectorViewController


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

    
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.sectors count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SectorNameCell"];
 
    
    Sector *sector = (self.sectors)[indexPath.row];
    cell.textLabel.text = sector.sectorName;
    cell.detailTextLabel.text = sector.race;
//    
    return cell;
}


#pragma Mark - Unwind Segue
-(IBAction)unwindToSectorInfo:(UIStoryboardSegue*)unwindSegue
{
    
}



@end
