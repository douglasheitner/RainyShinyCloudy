//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Douglas Heitner on 3/23/17.
//  Copyright © 2017 Douglas Heitner. All rights reserved.
//

import Foundation

typealias DownloadComplete = () -> ()

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let BASE_FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?"
let FORECAST_RESULTS = "&cnt=10"
let LATITUDE = "lat=\(Location.sharedInstance.latitude!)"
let LONGITUDE = "&lon=\(Location.sharedInstance.longitude!)"
let UNITS = "&units=metric"
let API_KEY = "&appid=a0aeb65a25ba902739464ede0fe3fe02"

let FORECAST_URL = "\(BASE_FORECAST_URL)\(LATITUDE)\(LONGITUDE)\(FORECAST_RESULTS)\(UNITS)\(API_KEY)"
let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)\(LONGITUDE)\(UNITS)\(API_KEY)"


