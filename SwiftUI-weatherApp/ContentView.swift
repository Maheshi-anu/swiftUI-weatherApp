//
//  ContentView.swift
//  SwiftUI-weatherApp
//
//  Created by Maheshi Anuradha on 2024-10-10.
//

import SwiftUI

struct ContentView: View {
    
    @State private var Isnight = false
    
    var body: some View {
        ZStack {
            BackGroundView(IsNight: Isnight)
            
            VStack{
                CityView(cityName: "Cupertino, CA")
                .padding()
                
                MainWeatherView(imageName: Isnight ? "moon.stars.fill" : "cloud.sun.fill", temp: 76)
                
                .padding(.bottom, 95)
                HStack(spacing: 25){
                    WeatherDayView(dayOfWeek: "TUE", imageName:"cloud.sun.fill",
                        temp: 20)
                    
                    WeatherDayView(dayOfWeek: "WED", imageName:"cloud.moon.fill",
                        temp: 19)
                    
                    WeatherDayView(dayOfWeek: "THU", imageName:"sun.max.fill",
                        temp: 28)
                    
                    WeatherDayView(dayOfWeek: "FRI", imageName:"sunset.fill",
                        temp: 22)
                    
                    WeatherDayView(dayOfWeek: "SAT", imageName:"wind.snow",
                        temp: 10)
                }
                
                Spacer()
                
                Button{
                    Isnight.toggle()
                } label: {
                    WeatherButtonView(buttonName: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek : String
    var imageName : String
    var temp : Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16,
                              weight: .medium,
                              design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:40, height: 40)
            
            Text("\(temp)°")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackGroundView: View {
    
    var IsNight: Bool
    
    var body: some View {
//        LinearGradient(
//          gradient: Gradient(colors: [IsNight ? .black : .blue,
//                                    IsNight ? .gray : Color("lightBlue")]),
//      startPoint: .topLeading,
//    endPoint: .bottomLeading
//      )
        
        ContainerRelativeShape()
            .fill(IsNight ? Color.black.gradient: Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct CityView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32,
                          weight: .medium,
                          design: .default))
            .foregroundColor(.white)
    }
}

struct MainWeatherView: View {
    
    var imageName : String
    var temp: Int
    
    var body: some View {
        VStack(spacing: 8){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temp)°")
                .font(.system(size: 40, weight: .medium))
                .foregroundColor(.white)
        }
    }
}



