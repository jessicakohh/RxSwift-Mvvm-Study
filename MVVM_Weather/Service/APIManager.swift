//
//  APIManager.swift
//  MVVM_Weather
//
//  Created by juyeong koh on 2023/03/10.
//

import Foundation
import Alamofire


struct APIManager {
    var weatherData: Weather?
    
    func fetchWeatherData() {
        let url = "http://api.openweathermap.org/data/2.5/weather?q=Seoul&appid=11669b1d8a6c2ad880d1fc1dc7afc847"
        
        

    }
}
