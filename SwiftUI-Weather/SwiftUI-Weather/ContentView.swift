//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Sandesh Boedhoe on 06/02/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var darkMode = false
    
    var body: some View {
        ZStack {
            setGradientBackground(darkMode: $darkMode)
            VStack {
                Text("Spijkenisse, ZH")
                    .font(.system(size: 32, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .padding()
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                Text("32°")
                    .font(.system(size: 48, weight: .bold, design: .default))
                    .foregroundColor(.white)
                Spacer()
                
                HStack(spacing: 32) {
                    ForEach(WeatherData.sampleData) { data in
                        weatherPerDate(day: data.day, icon: data.icon, degree: data.degree)
                    }
                }
                Spacer()
                
                Button("Switch layout", action: {
                    darkMode.toggle()
                })
                    .buttonStyle(.borderedProminent)
                    .font(.title)
                
            }
        }
    }
}

#Preview {
    ContentView()
}

struct setGradientBackground: View {
    
    @Binding var darkMode: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [darkMode ? Color.black : Color.blue, darkMode ? Color.gray : Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

struct weatherPerDate: View {
    var day: String
    var icon: String
    var degree: Int
    
    var body: some View {
        VStack {
            Text(day.uppercased())
                .font(.system(size: 16, weight: .bold, design: .default))
                .foregroundStyle(.white)
            Image(systemName: icon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32, alignment: .top)
                .padding(.vertical)
            Text("\(degree)°")
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}
