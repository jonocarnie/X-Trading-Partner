//
//  Station.h
//  X-Trading Partner
//
//  Created by Jonathan Carnie on 18/12/2013.
//  Copyright (c) 2013 Jonathan Carnie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Station : NSObject

@property (nonatomic, copy) NSString *stationName;
@property (nonatomic, copy) NSString *stationType;
@property (nonatomic, copy) NSArray *goodsBought;
@property (nonatomic, copy) NSArray *goodsSold;

@end
