//
//  JCSector.swift
//  X-Trading Partner
//
//  Created by Jonathan Carnie on 30/11/2014.
//  Copyright (c) 2014 Jonathan Carnie. All rights reserved.
//

import UIKit

class JCSector: NSObject {
    
    var sectorname = String()
    var race = String()
    var stations: [String] = []

    // MARK: - Computed properties
    var sectDescription:String {
        return String(format: "<Sector info>: %@, Owning Race: %@, Stations present: %@",sectorname, race, stations)
    }
   
}
