//
//  AnalysisResultHeaderView.swift
//  BabyApp
//
//  Created by Vasiliy on 01.12.2023.
//

import SwiftUI

struct AnalysisResultHeaderView: View {
    
    @State private var isCircleRed = false
    
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                HStack {
                    Text("Wednesday")
                        .font(.system(size: 32))
                        .foregroundColor(.white)
                        .bold()
                    Circle()
                        .frame(width: 10)
                        .foregroundColor(isCircleRed ? .red : .green)
                    // тут должна быть логика для цвета
                }
                
                Text("November 1")
                    .font(.system(size: 14))
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Image("ImageCalendar")
                .renderingMode(.template)
                .foregroundColor(.white)
                .padding(.horizontal)

        }
        .background(.black)
        .padding()
    }
}

struct AnalysisResultHeaderView_Preview: PreviewProvider {
    static var previews: some View {
        AnalysisResultHeaderView()
    }
}
