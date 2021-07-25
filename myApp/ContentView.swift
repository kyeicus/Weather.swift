//
//  ContentView.swift
//  myApp
//
//  Created by Kyeicus 😋 on 15/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            BackgroundView(topColor: isNight ? .black : .blue,
                            bottomColor: isNight ? .gray : Color("lightBlue"))
                                
            VStack{
                CityTextView(cityName: "Accra")
            
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                      temperature: 70 )
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "snow",
                                   temperature: 60)
                    
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 56)
                    
                    WeatherDayView(dayOfWeek: "THUR",
                                   imageName: "cloud.sun.fill",
                                   temperature: 96)
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.moon.fill",
                                   temperature: 66)
                    
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "cloud.heavyrain.fill",
                                   temperature: 61)
                }
                    Spacer()
                 
                Button{
                    isNight.toggle()
                } label: {
                   WeatherButton(title: "Change Day View")
                    
                }
                Spacer()
                
                
            }
        }
    }
}
        
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            ContentView()
                
                
        }
            
            
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text("\(dayOfWeek)")
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: "\(imageName)")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue") ]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}


struct CityTextView: View {
    var cityName: String
    
    var body: some View  {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
    
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
     
    
    
    var body: some View{
        VStack(spacing: 10){
        Image(systemName: imageName)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100)
        
        Text("\(temperature)°")
            .font(.system(size: 70, weight: .medium))
            .foregroundColor(.white)
            
    }
    
        .padding(.bottom, 60)
    
    }
}

