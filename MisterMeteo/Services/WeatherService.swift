//
//  WeatherService.swift
//  MisterMeteo
//
//  Created by Florent Frossard on 19/03/2020.
//  Copyright © 2020 Florent Frossard. All rights reserved.
//

import Foundation


class WeatherService {
    
    func getWeather(city: String, completion: @escaping (Weather?) -> ()) {
    
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&units=metric&appid=043216d44400dab0bd1a2d06b7072203")
            else {
//                completion(nil)
                return
        }
        
        URLSession.shared.dataTask(with: url) {
            data, response, error in
            guard let data = data, error == nil else {
//                completion(nil)
                return
            }
            
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            if let weatherResponse = weatherResponse {
                let weather = weatherResponse.main
                completion(weather)
            } else { return
//                completion(nil)
            }
        }.resume()
    }
}
