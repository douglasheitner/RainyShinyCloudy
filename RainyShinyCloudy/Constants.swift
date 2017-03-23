//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Douglas Heitner on 3/23/17.
//  Copyright © 2017 Douglas Heitner. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let API_KEY = "&appid=a0aeb65a25ba902739464ede0fe3fe02"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-29.98\(LONGITUDE)-50.13\(API_KEY)"

