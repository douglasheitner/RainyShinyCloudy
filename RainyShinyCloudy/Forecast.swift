//
//  Forecast.swift
//  RainyShinyCloudy
//
//  Created by Douglas Heitner on 3/24/17.
//  Copyright © 2017 Douglas Heitner. All rights reserved.
//

import Foundation
import UIKit

class Forecast {
    
    private var _date: String!
    private var _weatherType: String?
    private var _highTemp: String?
    private var _lowTemp: String!

    init(weatherDict: [String:AnyObject]) {
        
        if let temp = weatherDict["temp"] as? [String:AnyObject] {
            if let min = temp["min"] as? Double {
                self._lowTemp = "\(min)"
            }
            
            if let max = temp["max"] as? Double {
                self._highTemp = "\(max)"
            }
        }
        
        if let weather = weatherDict["weather"] as? [[String:AnyObject]] {
            if let main = weather[0]["main"] as? String {
                self._weatherType = main
            }
        }
        
        if let date = weatherDict["dt"] as? Double {
            let unixConvertDate = Date(timeIntervalSince1970: date)
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.dateFormat = "EEEE"
            dateFormatter.timeStyle = .none
            self._date = unixConvertDate.dayOfTheWeek()
        }
    }
    
    var date: String {
        
        return _date ?? ""
    }
    
    var weatherType: String {
        
        return _weatherType ?? ""
    }
    
    var highTemp: String {
        
        return _highTemp ?? ""
    }
    
    var lowTemp: String {
        
        return _lowTemp ?? ""
    }
}

extension Date {
    func dayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}
