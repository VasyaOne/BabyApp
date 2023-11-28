//
//  ContentView.swift
//  BabyApp
//
//  Created by Vasiliy on 28.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //MARK: Lable
        
        HStack{
            VStack (alignment: .leading){
                HStack {
                    Text("Wednesday")
                        .font(.system(size: 32))
                        .bold()
                    Circle()
                        .frame(width: 10)
                        .foregroundColor(.red)
                }
                Text("November 1")
                    .font(.system(size: 14))
            }
            
            Spacer()
            
            Image("ImageCalendar")
                .renderingMode(.template)
                .foregroundColor(Color(UIColor.white))
                .padding(.horizontal)

        }
        .padding()
        
        //MARK: Scroll
        
        ScrollView {
            
            VStack (spacing: 15){
                
                BlockMoodsView()
                    .padding(.horizontal)
                
                BlockBooldView()
                    .padding(.horizontal)
                
                BlockShugarView()
                    .padding(.horizontal)
                
                BlockBMIView()
                    .padding(.horizontal)
                
                BlockSleepView()
                    .padding(.horizontal)

            }
        }
    }
}

#Preview {
    ContentView()
}
