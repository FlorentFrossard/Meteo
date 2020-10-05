//
//  WeatherDataService.swift
//  MisterMeteo
//
//  Created by Florent Frossard on 19/03/2020.
//  Copyright © 2020 Florent Frossard. All rights reserved.
//

import SwiftUI

//struct WeatherDataService: Codable, Identifiable {
//    
//    let id = UUID()
//    var temp : Double
//    var humidity : Double
//    var city : String
//}
//
//class ApiWeather {
//    
//    func getWeathers(city: String, completion: @escaping([WeatherDataService]) -> ()) {
//        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&units=metric&appid=043216d44400dab0bd1a2d06b7072203")
//            else {return}
//        
//        URLSession.shared.dataTask(with: url) { (data, _, _) in
//            let weather = try! JSONDecoder().decode([WeatherDataService].self, from: data!)
//            
//            DispatchQueue.main.async {
//                completion(weather)
//            }
//          
//        }.resume()
//    }
//}
