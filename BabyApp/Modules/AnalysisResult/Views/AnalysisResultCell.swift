//
//  AnalysisResultCell.swift
//  BabyApp
//
//  Created by Vasiliy on 28.11.2023.
//

import SwiftUI

struct AnalysisResultCell: View {
    
    let item: AnalysisResultModel
    let togle = true
    
    init(for item: AnalysisResultModel) {
        self.item = item
    }
    
    var body: some View {
        
        HStack {
            VStack(spacing: 20) {
                
                HStack (alignment: .top){
                    
                    Image(item.image)
                        .foregroundColor(togle ? .white : .red)
                    
                    VStack {
                        
                        Text(item.textInHeaderBubble)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .font(.system(size: 20))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ForEach(item.value, id: \.hashValue) { value in
                            AnalysisResultProgressView(
                                value: value,
                                trackGradient: [Color.lineRedDark, Color.lineRed, Color.lineYelow, Color.lineGreen]
                            )
                        }
                        
                        HStack {
                            Button {
                                print("кнопка Learn more работает")
                            } label: {
                                Text("Learn more")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 16))
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 4)
                                    .background(.gray)
                                    .clipShape(Capsule())
                            }
                            
                            Button {
                                print("кнопка Why it's important работает")
                            } label: {
                                Text("Why it's important")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 16))
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 4)
                                    .background(.gray)
                                    .clipShape(Capsule())
                            }
                        }
                    }
                    .padding(.leading)
                }
            }
            .padding()
            .background(togle ? Color.babbleGrey : Color.babbleDarkRed)
            .cornerRadius(15)
            .shadow(color: togle ? .black : .red, radius: 15)
            .padding(.horizontal)
            .padding(.vertical, 8)
        }
    }
}

struct AnalysisResultCell_Preview: PreviewProvider {
    static var previews: some View {
        AnalysisResultCell(for: .example1)
    }
}
