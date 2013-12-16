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
        
        // load up the plist data here
     
        
        
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
 //   NSArray *keys = [dictionary allKeys];
 //   NSArray *values = [dictionary allValues];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Sectors" ofType:@"plist"];
    NSLog(@"Path %@",path);
    
    NSDictionary *tempDict = [[NSDictionary alloc] initWithContentsOfFile:path];
//    NSLog(@"Dict contains %@", tempDict);

    self.sectorKeys = [tempDict allKeys];
    self.sectorValues = [tempDict allValues];
    NSLog(@"Sectors contained %@", self.sectorKeys);
    NSLog(@"Sectors in array: %@", self.sectorValues);

    
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
    return [self.sectorKeys count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.sectorValues count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SectorNameCell"];
    
    Sector *sector =[[Sector alloc] init];
    sector.sectorName = (self.sectorKeys)[indexPath.row];
  //  sector.race = @"Boron";
    //
    
 //   Sector *sector = (self.sectorKeys)[indexPath.row];
    cell.textLabel.text = sector.sectorName;
//    cell.detailTextLabel.text = sector.race;
//    
    return cell;
}


#pragma Mark - Unwind Segue
-(IBAction)unwindToSectorInfo:(UIStoryboardSegue*)unwindSegue
{
    
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end