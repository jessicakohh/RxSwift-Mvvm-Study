//
//  WeatherDTO.swift
//  MVVM_Weather
//
//  Created by juyeong koh on 2023/03/10.
//

import Foundation

struct WeatherData: Codable {
    var cityName: String
    let temperature: Double
    let humidity: Double
}
