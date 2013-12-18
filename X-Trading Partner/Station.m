//
//  Station.m
//  X-Trading Partner
//
//  Created by Jonathan Carnie on 18/12/2013.
//  Copyright (c) 2013 Jonathan Carnie. All rights reserved.
//

#import "Station.h"

@implementation Station

-(NSString *)description
{
    return [NSString stringWithFormat:@"<Station info:> Station name %@, Station Type %@", self.stationName, self.stationType];
}

@end
