//
//  JCNewStationDetailsTableViewController.h
//  X-Trading Partner
//
//  Created by Jonathan Carnie on 18/12/2013.
//  Copyright (c) 2013 Jonathan Carnie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JCNewStationDetailsTableViewController : UITableViewController


-(IBAction)cancel;
-(IBAction)done;
@property (weak, nonatomic) IBOutlet UITextField *stationEntryField;

@property (weak, nonatomic) IBOutlet UITextField *stationTypeEntryField;
@end
