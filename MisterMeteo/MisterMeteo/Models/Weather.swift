//
//  Weather.swift
//  MisterMeteo
//
//  Created by Florent Frossard on 19/03/2020.
//  Copyright © 2020 Florent Frossard. All rights reserved.
//

import Foundation


struct WeatherResponse: Decodable {
    let main: Weather
}

struct Weather: Decodable {
 
    var temp : Double?
    var humidity: Double?
}
