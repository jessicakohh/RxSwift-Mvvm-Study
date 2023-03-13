//
//  WeatherDTO.swift
//  MVVM_Weather
//
//  Created by juyeong koh on 2023/03/10.
//

import Foundation

struct Weather {
    var cityName: String
    var temperature: Double
    var humidity: Double
    
    init(cityName: String, temperature: Double, humidity: Double) {
        self.cityName = cityName
        self.temperature = temperature
        self.humidity = humidity
    }
}
