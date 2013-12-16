//
//  JCAppDelegate.h
//  X-Trading Partner
//
//  Created by Jonathan Carnie on 16/12/2013.
//  Copyright (c) 2013 Jonathan Carnie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JCAppDelegate : UIResponder <UIApplicationDelegate>

@property (nonatomic, strong) NSArray *sectorKeys;
@property (nonatomic, strong) NSArray *sectorValues;

@property (strong, nonatomic) UIWindow *window;

@end
