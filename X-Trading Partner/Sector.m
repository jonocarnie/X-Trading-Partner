//
//  Sector.m
//  X-Trading Partner
//
//  Created by Jonathan Carnie on 16/12/2013.
//  Copyright (c) 2013 Jonathan Carnie. All rights reserved.
//

#import "Sector.h"

@implementation Sector

-(NSString *)description
{
    return [NSString stringWithFormat:@"<Sector info:> Sector name %@, Owning Race %@, Stations present %@", self.sectorName, self.race, self.stations];
}

@end
