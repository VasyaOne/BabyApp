//
//  ProgressView.swift
//  BabyApp
//
//  Created by Vasiliy on 29.11.2023.


import SwiftUI

struct AnalysisResultProgressView: View {
    
    let value: AnalysisResultModel.ValueModel
//    let trackGradient: [Color]
    let trackGradient: GradientChoice
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            UnwrapedViewModifer(value.title) { title in
                Text(title)
                    .foregroundStyle(.secondary)
                    .font(.subheadline)
            }
            
            GeometryReader { screen in
                ZStack(alignment: .leading) {
                    
                    RoundedRectangle(cornerRadius: 15)
                        .fill(
                            LinearGradient(
                                colors: trackGradient.colors,
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .frame(width: screen.size.width, height: 9)
                    
                    ZStack {
                        Circle()
                            .fill(Color(UIColor.secondarySystemBackground))
                            .frame(width: 24, height: 24)
                        
                        Circle()
                            .foregroundColor(.yellow)
                            .frame(width: 17, height: 17)
                        
                    }
                    .offset(x: screen.size.width * CGFloat(value.value) / CGFloat(value.scaleMax))
                    
                }
                
                Text("\(String(format: "%.2f", value.value)) \(value.text)")
                    .foregroundStyle(.secondary)
                    .font(.subheadline)
                    .offset(x: screen.size.width * CGFloat(value.value) / CGFloat(value.scaleMax) - 15, y: 25)
            }
            .frame(height: 40)
        }
    }
}

struct AnalysisResultProgressView_Preview: PreviewProvider {
    static var previews: some View {
        AnalysisResultProgressView(
            value: .example5,
            trackGradient: GradientChoice.one
        )
    }
}
