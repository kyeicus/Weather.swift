//
//  WeatherButton.swift
//  myApp
//
//  Created by Kyeicus 😋 on 25/07/2021.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    
    var body: some View{
        Text(title )
            .frame(width: 280, height: 50)
            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color("lightBlue")]), startPoint: .bottomLeading, endPoint: .topTrailing))
            .font(.system(size: 20,weight: .bold, design: .default))
            .cornerRadius(10)
    }
    
}
