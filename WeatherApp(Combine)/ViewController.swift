//
//  ViewController.swift
//  WeatherApp(Combine)
//
//  Created by Hammas Naik on 20/08/2021.
//

import UIKit
import Combine

class ViewController: UIViewController
{
//MARK: - OUTLETS
    @IBOutlet weak var weather: UILabel!

//MARK: - VARIABLES
    var weatherapi = WebService()
    var cancellable :AnyCancellable?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
         cancellable = weatherapi.getWeather()
            .catch{ _ in Just(Weather.placeholder) }
            .map
            {data in
                if let temp = data?.temp
                {
                    return "\(temp) ℉"
                }
                else
                {
                    return "Empty"
                }
            }
            .assign(to: \.text, on: self.weather)
    }
    


}

