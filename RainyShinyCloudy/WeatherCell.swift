//
//  WeatherCell.swift
//  RainyShinyCloudy
//
//  Created by Douglas Heitner on 3/24/17.
//  Copyright © 2017 Douglas Heitner. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var highTemp: UILabel!
    @IBOutlet weak var lowTemp: UILabel!
    
    func configureCell(forecast: Forecast) {
        lowTemp.text = "\(String(format: "%.1f", forecast.lowTemp))℃"
        highTemp.text = "\(String(format: "%.1f", forecast.highTemp))℃"
        weatherType.text = forecast.weatherType.capitalized
        dayLabel.text = forecast.date.capitalized
        weatherIcon.image = UIImage(named: "\(forecast.weatherType) Mini")
    }
}
