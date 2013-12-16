//
//  Sector.h
//  X-Trading Partner
//
//  Created by Jonathan Carnie on 16/12/2013.
//  Copyright (c) 2013 Jonathan Carnie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sector : NSObject

@property (nonatomic, copy) NSString *sectorName;
@property (nonatomic, copy) NSString *race;
@property (nonatomic, copy) NSArray *stations;

@end
