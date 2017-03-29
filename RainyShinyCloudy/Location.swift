//
//  Location.swift
//  RainyShinyCloudy
//
//  Created by Douglas Heitner on 3/29/17.
//  Copyright © 2017 Douglas Heitner. All rights reserved.
//

import Foundation
import CoreLocation

class Location {
    
    static var sharedInstance = Location()
    private init (){}
    
    var latitude: Double!
    var longitude: Double!
}
