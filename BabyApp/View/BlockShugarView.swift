//
//  BlockShugarView.swift
//  BabyApp
//
//  Created by Vasiliy on 28.11.2023.
//

import SwiftUI

struct BlockShugarView: View {
    
    @State private var isShowRed = false
    
    @State private var barShugarTotal: Float = ShugarModel().scaleShugar
    @State private var barShugarValue: Float = ShugarModel().valueShugar
    @State private var textShugarValue: String = ShugarModel().textShugar
    
    var body: some View {
        
        ZStack {
            
            if ShugarModel().valueShugar > 5.0 {
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(UIColor.red))
                    .frame(width: .infinity, height: 149)
                    .shadow(color: .red, radius: 10)
                    .onAppear { isShowRed.toggle() }
                
            }
            
            RoundedRectangle(cornerRadius: 15)
                .fill(isShowRed ? Color("ColorDarkRed") : Color(UIColor.secondarySystemBackground))
                .frame(width: .infinity, height: 149)
            
            HStack (alignment: .top) {
               
                Image("Candy")
                    .renderingMode(.template)
                    .foregroundColor(isShowRed ? Color("ColorLineRed") : Color(UIColor.white))
                    .padding(.leading)
                    .padding(.top)
               
                VStack (alignment: .leading, spacing: 0){
                    
                    Text("Sugar level is a little high")
                        .foregroundStyle(.white)
                        .font(.system(size: 20))
                    
                    //MARK: Line
                    GeometryReader { screen in
                        
                        ZStack (alignment: .leading){
                            
                            RoundedRectangle(cornerRadius: 15)
                                .fill(LinearGradient(colors:[Color("ColorLineGreen"), Color("ColorLineYelow"), Color("ColorLineRed"), Color("ColorLineRedDark")], startPoint: .leading, endPoint: .trailing))
                                .frame(width: .infinity, height: 9)
                            
                            ZStack {
                                
                                Circle()
                                    .fill(Color(UIColor.secondarySystemBackground))
                                    .frame(width: 24, height: 24)
                                
                                Circle()
                                    .foregroundColor(.yellow)
                                    .frame(width: 17, height: 17)
                                
                            }
                            .offset(x: screen.size.width * CGFloat(barShugarValue) / CGFloat(barShugarTotal))
                            
                        }
                        Text("\(textShugarValue) mmol/l")
                            .font(.system(size: 14))
                            .offset(x: screen.size.width * CGFloat(barShugarValue) / CGFloat(barShugarTotal) - 15, y: 25)
                        
                    }
                    .frame(height: 40)
                    .padding(.bottom, 25)
                    
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
    BlockShugarView()
}
