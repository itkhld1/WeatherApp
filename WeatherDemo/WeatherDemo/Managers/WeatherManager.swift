//
//  WeatherManager.swift
//  WeatherDemo
//
//  Created by Itkhld on 21.03.2024.
//

import Foundation
import CoreLocation

class WeatherManager{
    func getCurrentWeather(latitute: CLLocationDegrees, longitude: CLLocationDegrees) async throws {
        guard let url = URL(string: "api.openweathermap.org/data/2.5/weather?lat=\(latitute)&lon=\(longitude)&appid=\("abcde")&units=metric") else {fatalError("Missing URL")}
        
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {fatalError("Error fetching weather data")}
    }
}
