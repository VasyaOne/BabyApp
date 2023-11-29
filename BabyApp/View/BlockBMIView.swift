//
//  BlockBMIView.swift
//  BabyApp
//
//  Created by Vasiliy on 28.11.2023.
//

import SwiftUI

struct BlockBMIView: View {
    
    @State private var isShowRed = false
    
    @State private var barBMITotal: Float = BMIModel().scaleBMI
    @State private var barBMIValue: Float = BMIModel().valueBMI
    @State private var textBMIValue: String = BMIModel().textBMI
    
    var body: some View {
        
        ZStack {
            
            if BMIModel().valueBMI < 19 || BMIModel().valueBMI > 35.0 {
                
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
               
                Image("BMI")
                    .renderingMode(.template)
                    .foregroundColor(isShowRed ? Color("ColorLineRed") : Color(UIColor.white))
                    .padding(.leading)
                    .padding(.top)
               
                VStack (alignment: .leading, spacing: 0){
                    
                    Text("Your BMI is normal")
                        .foregroundStyle(.white)
                        .font(.system(size: 20))
                    
                    //MARK: Line
                    GeometryReader { screen in
                        
                        ZStack (alignment: .leading){
                            
                            RoundedRectangle(cornerRadius: 15)
                                .fill(LinearGradient(colors:[Color("ColorLineRedDark"), Color("ColorLineRed"), Color("ColorLineYelow"), Color("ColorLineGreen"), Color("ColorLineGreen"), Color("ColorLineYelow"),Color("ColorLineRed"), Color("ColorLineRedDark")], startPoint: .leading, endPoint: .trailing))
                                .frame(width: .infinity, height: 9)
                            
                            ZStack {
                                
                                Circle()
                                    .fill(Color(UIColor.secondarySystemBackground))
                                    .frame(width: 24, height: 24)
                                
                                Circle()
                                    .foregroundColor(.yellow)
                                    .frame(width: 17, height: 17)
                                
                            }
                            .offset(x: screen.size.width * CGFloat(barBMIValue) / CGFloat(barBMITotal))
                            
                        }
                        Text("\(textBMIValue) mmol/l")
                            .font(.system(size: 14))
                            .offset(x: screen.size.width * CGFloat(barBMIValue) / CGFloat(barBMITotal) - 15, y: 25)
                        
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
    BlockBMIView()
}
