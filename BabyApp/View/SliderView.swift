//
//  SliderView.swift
//  BabyApp
//
//  Created by Vasiliy on 28.11.2023.
//

import SwiftUI

struct SliderView: View {
    
    @State private var value: Double = 0.5
    
    var trackGradient: LinearGradient
    
    var body: some View {
        
        GeometryReader (){ geometry in
            
            ZStack (alignment: .leading) {
                trackGradient
                    .frame(width: geometry.size.width, height: 9)
                    .cornerRadius(5)
                VStack {
                    
                    ZStack {
                        
                        Circle()
                            .fill(Color(UIColor.secondarySystemBackground))
                            .frame(width: 24, height: 24)
                        
                        Circle()
                            .foregroundColor(.yellow)
                            .frame(width: 17, height: 17)
                        
                    }
                    Text("Some text")
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                    
                    
                }
                .offset(x: CGFloat(value) * geometry .size.width - 15, y: 11)
                .gesture(
                    DragGesture(minimumDistance: 0)
                        .onChanged {
                            gesture in
                            updateValue(with: gesture, in: geometry)
                        }
                )
            }
        }
        .frame(height: 40)
        .padding(.bottom, 25)
    }
    
    func updateValue (with gesture: DragGesture.Value, in geomtry: GeometryProxy){
        let newValue = gesture.location.x / geomtry.size.width
        value = min(max(Double(newValue), 0), 1)
    }
}

#Preview {
    SliderView(trackGradient: LinearGradient(gradient: Gradient(colors: [.red, .yellow, .green, .yellow, .red]), startPoint: .leading, endPoint: .trailing))
}
