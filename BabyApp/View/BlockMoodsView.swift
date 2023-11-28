//
//  BlockView.swift
//  BabyApp
//
//  Created by Vasiliy on 28.11.2023.
//

import SwiftUI

struct BlockMoodsView: View {
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 15)
                .fill(Color(UIColor.secondarySystemBackground))
                .frame(width: .infinity, height: 149)
            
            HStack (alignment: .top) {
               
                Image("Smile")
                    .renderingMode(.template)
                    .foregroundColor(Color(UIColor.white))
                    .padding(.leading)
                    .padding(.top)
               
                VStack (alignment: .leading, spacing: 0){
                    
                    Text("Your general mood is great!")
                        .foregroundStyle(.white)
                        .font(.system(size: 20))
                    
                    SliderView(trackGradient: LinearGradient(gradient: Gradient(colors: [.red, .yellow, .green]), startPoint: .leading, endPoint: .trailing))
                    
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
                }
                .padding()
            }
        }
    }
}

#Preview {
    BlockMoodsView()
}
