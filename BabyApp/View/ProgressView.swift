//
//  ProgressView.swift
//  BabyApp
//
//  Created by Vasiliy on 29.11.2023.


import SwiftUI

struct ProgressView: View {
    
    @State private var barTotal: Float = MoodsModel().scale
    @State private var barValue: Float = MoodsModel().value
    @State private var textValue: String = MoodsModel().text
    
    var trackGradient: LinearGradient
    
    var body: some View {
        
        GeometryReader { screen in
            
            ZStack (alignment: .leading){
                RoundedRectangle(cornerRadius: 15)
                    .fill(trackGradient)
                    .frame(width: .infinity, height: 9)
                
                ZStack {
                    
                    Circle()
                        .fill(Color(UIColor.secondarySystemBackground))
                        .frame(width: 24, height: 24)
                    
                    Circle()
                        .foregroundColor(.yellow)
                        .frame(width: 17, height: 17)
                    
                }
                .offset(x: screen.size.width * CGFloat(barValue) / CGFloat(barTotal))
                
            }
            Text("\(textValue)")
                .offset(x: screen.size.width * CGFloat(barValue) / CGFloat(barTotal) - 15, y: 25)
            
        }
        .frame(height: 40)
        .padding(.bottom, 25)
    }
}

#Preview {
    ProgressView(trackGradient: LinearGradient(colors:[Color.red, Color.yellow, Color.green], startPoint: .leading, endPoint: .trailing))
}
