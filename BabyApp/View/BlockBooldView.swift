//
//  BlockBooldView.swift
//  BabyApp
//
//  Created by Vasiliy on 28.11.2023.
//

import SwiftUI

struct BlockBooldView: View {
    
    @State private var isShowRed = false
    
    @State private var barSystolicTotal: Float = BloodModel().scaleSystolic
    @State private var barSystolicValue: Float = BloodModel().systolic
    @State private var textSystolicValue: Int = BloodModel().textSystolic
    
    @State private var barDiastolicTotal: Float = BloodModel().scaleDiastolic
    @State private var barDiastolicValue: Float = BloodModel().diastolic
    @State private var textDiastolicValue: Int = BloodModel().textDiastolic
    
    
    var body: some View {
        ZStack {
            
            if BloodModel().systolic < 50 || BloodModel().systolic > 140 && BloodModel().diastolic < 50 || BloodModel().diastolic > 80 {
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(UIColor.red))
                    .frame(width: .infinity, height: 240)
                    .shadow(color: .red, radius: 10)
                    .onAppear { isShowRed.toggle() }
                
            }
            
            RoundedRectangle(cornerRadius: 15)
                .fill(isShowRed ? Color("ColorDarkRed") : Color(UIColor.secondarySystemBackground))
                .frame(width: .infinity, height: 240)
            
            HStack (alignment: .top){
                
                Image("Blood")
                    .renderingMode(.template)
                    .foregroundColor(isShowRed ? Color("ColorLineRed") : Color(UIColor.white))
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
                        
                        //MARK: Line ONE
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
                                .offset(x: screen.size.width * CGFloat(barSystolicValue) / CGFloat(barSystolicTotal))
                                
                            }
                            Text("\(textSystolicValue) mmHg")
                                .font(.system(size: 14))
                                .offset(x: screen.size.width * CGFloat(barSystolicValue) / CGFloat(barSystolicTotal) - 15, y: 25)
                            
                        }
                        .frame(height: 40)
                        .padding(.bottom, 25)
                        
                    }
                    .offset(y: 10)
                    
                    VStack (alignment: .leading, spacing: 0){
                        Text("Diastolic")
                            .foregroundStyle(.white)
                            .font(.system(size: 14))
                        
                        //MARK: Line TWO
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
                                .offset(x: screen.size.width * CGFloat(barDiastolicValue) / CGFloat(barDiastolicTotal))
                                
                            }
                            Text("\(textDiastolicValue) mmHg")
                                .font(.system(size: 14))
                                .offset(x: screen.size.width * CGFloat(barDiastolicValue) / CGFloat(barDiastolicTotal) - 15, y: 25)
                            
                        }
                        .frame(height: 40)
                        .padding(.bottom, 25)
                    }
                    
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
