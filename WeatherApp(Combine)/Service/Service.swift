//
//  Service.swift
//  WeatherApp(Combine)
//
//  Created by Hammas Naik on 20/08/2021.
//

import Foundation
import Combine

class WebService
{
    var util = Utils()
    func getWeather() -> AnyPublisher<Weather?,Error>
    {
        guard let url = URL(string: "http://api.openweathermap.org/data/2.5/weather?q=Housten&appid=7d2dd8c9c5578b741c7735ad3f0d39ea&units=imperial")
        else
        {
            fatalError("Api Error")
        }
        
        return URLSession.shared.dataTaskPublisher(for: url)
                .map(\.data)
                .print()
                .decode(type: WeatherResponse.self, decoder: JSONDecoder())
                .print()
                .map(\.main)
                .receive(on: RunLoop.main)
                .eraseToAnyPublisher()
    }
}

