//
//  Utils.swift
//  WeatherApp(Combine)
//
//  Created by Hammas Naik on 20/08/2021.
//

import Foundation

class Utils
{
    func api() -> URL
    {
        return URL(string: "http://api.openweathermap.org/data/2.5/weather?q=Housten&appid=7d2dd8c9c5578b741c7735ad3f0d39ea&units=imperial")!
    }
}
