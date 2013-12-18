//
//  JCAppDelegate.m
//  X-Trading Partner
//
//  Created by Jonathan Carnie on 16/12/2013.
//  Copyright (c) 2013 Jonathan Carnie. All rights reserved.
//

#import "JCAppDelegate.h"
#import "Sector.h"
#import "JCTSectorViewController.h"

@implementation JCAppDelegate
{
    NSMutableArray *_sectors;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Sectors" ofType:@"plist"];
//    NSLog(@"Path %@",path);
    
    NSDictionary *tempDict = [[NSDictionary alloc] initWithContentsOfFile:path];
    
    _sectors = [NSMutableArray arrayWithCapacity:25];
    
    NSArray *fullList = [tempDict allKeys];
    
    for (NSString *race in fullList) {
        
   //     NSLog(@"Race: %@", race);
        self.sectorValues = tempDict[race];
        
        Sector *sector = [[Sector alloc]init];
        
        for (NSString *tmpsectorName in self.sectorValues) {
//            NSLog(@"name: %@", tmpsectorName);
//            NSLog(@"race: %@", race);
//            
            sector.sectorName = tmpsectorName;
            sector.race = race;
 //           NSLog(@"%@",sector);
            [_sectors addObject:sector];
            sector =[[Sector alloc] init];

        }
    }
    
 
    UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;
    JCTSectorViewController *sectorViewController = [navigationController viewControllers][0];
    sectorViewController.sectors = _sectors;
   
    
    
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
