//
//  WeatherModel.swift
//  WeatherApp(Combine)
//
//  Created by Hammas Naik on 20/08/2021.
//

import Foundation

struct WeatherResponse:Codable
{
    let main:Weather?
}


struct Weather:Codable
{
    let temp:Double?
    let humidity:Double?
    static var placeholder:Weather
    {
        return Weather(temp: 0.0, humidity: 0.0)
    }
}
