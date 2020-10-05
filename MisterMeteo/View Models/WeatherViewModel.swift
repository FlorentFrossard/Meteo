//
//  WeatherViewModel.swift
//  MisterMeteo
//
//  Created by Florent Frossard on 19/03/2020.
//  Copyright © 2020 Florent Frossard. All rights reserved.
//
//
import Foundation
import Combine

class WeatherViewModel: ObservableObject {
    
    private var weatherService : WeatherService
    
    @Published var weather = Weather()
    
    init() {
        self.weatherService = WeatherService()
    }
    
    var temperature: String {
        if let temp = self.weather.temp{
            return String(format: "\(temp)%°C")
        } else {
            return ""
        }
    }
    
    var humidity: String {
        if let humidity = self.weather.humidity {
            return String(format: "%°C", humidity)
        } else {
            return ""
        }
    }
    
    var cityName : String = ""
    
    func search() {
        // fonction permettent d'avoir la temperature à l'unité souhaité (ecrit en format obj-c).
        
        if let city = self.cityName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) {
            fetchWeather(by: city)
        }
    }
    
    private func fetchWeather(by city: String){
        self.weatherService.getWeather(city: city) {
            weather in
            if let weather = weather {
                DispatchQueue.main.async {
                    self.weather = weather
                }
                
            }
        }
    }
}
