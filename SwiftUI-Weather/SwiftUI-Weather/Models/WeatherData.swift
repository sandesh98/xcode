//
//  WeatherData.swift
//  SwiftUI-Weather
//
//  Created by Sandesh Boedhoe on 06/02/2024.
//

import Foundation

struct WeatherData: Identifiable {
    var id: UUID
    var day: String
    var icon: String
    var degree: Int
}

extension WeatherData {
    static let sampleData: [WeatherData] =
    [
        WeatherData(id: UUID(), day: "ma", icon: "cloud.sun.fill", degree: 32),
        WeatherData(id: UUID(), day: "di", icon: "cloud.sun.rain.fill", degree: 32),
        WeatherData(id: UUID(), day: "wo", icon: "cloud.snow.fill", degree: 32),
        WeatherData(id: UUID(), day: "do", icon: "cloud.sun.fill", degree: 32),
        WeatherData(id: UUID(), day: "vr", icon: "cloud.sun.fill", degree: 32)
    ]
}
