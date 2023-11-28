//
//  BlockBooldView.swift
//  BabyApp
//
//  Created by Vasiliy on 28.11.2023.
//

import SwiftUI

struct BlockBooldView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color(UIColor.secondarySystemBackground))
                .frame(width: .infinity, height: 240)
            
            HStack (alignment: .top){
               
                Image("Blood")
                    .renderingMode(.template)
                    .foregroundColor(Color(UIColor.white))
                    .padding(.leading)
                    .padding(.top, 30)
               
                VStack (alignment: .leading){
                    
                    Text("Blood pressure is fine")
                        .foregroundStyle(.white)
                        .font(.system(size: 20))
                        .offset(y: 10)
                        
                    VStack (alignment: .leading, spacing: 0){
                        Text("Systolic")
                            .foregroundStyle(.white)
                            .font(.system(size: 14))
                            .offset(y: 10)
                        
                        SliderView(trackGradient: LinearGradient(gradient: Gradient(colors: [.red, .yellow, .green, .yellow, .red]), startPoint: .leading, endPoint: .trailing))
                    }
                    .offset(y: 10)
                    
                    VStack (alignment: .leading, spacing: 0){
                        Text("Diastolic")
                            .foregroundStyle(.white)
                            .font(.system(size: 14))
                            .offset(y: 10)
                        
                        SliderView(trackGradient: LinearGradient(gradient: Gradient(colors: [.red, .yellow, .green, .yellow, .red]), startPoint: .leading, endPoint: .trailing))
                    }
                    .offset(y: -10)
                    
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color(UIColor.secondaryLabel))
                                .frame(width: 98, height: 31)
                                .foregroundColor(.gray)
                            Text("Learn more")
                                .foregroundStyle(.white)
                                .font(.system(size: 16))
                        }
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color(UIColor.secondaryLabel))
                                .frame(width: .infinity, height: 31)
                                .foregroundColor(.gray)
                            
                            Text("Why it's important")
                                .foregroundStyle(.white)
                                .font(.system(size: 16))

                        }
                        
                    }
                    .offset(y: -15)
                    
                }
                .padding()
            }
        }
    }
}

#Preview {
    BlockBooldView()
}
