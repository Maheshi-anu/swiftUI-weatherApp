//
//  WeatherButtonView.swift
//  SwiftUI-weatherApp
//
//  Created by Maheshi Anuradha on 2024-10-10.
//

import SwiftUI

struct WeatherButtonView: View {
    
    var buttonName: String
    var textColor : Color
    var backgroundColor: Color
    
    var body: some View {
        
        Text(buttonName)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
        
    }
}


