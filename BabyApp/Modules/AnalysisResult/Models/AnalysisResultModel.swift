//
//  AnalysisResult.swift
//  BabyApp
//
//  Created by Vasiliy on 01.12.2023.
//

import Foundation
import SwiftUI

struct AnalysisResultModel: Hashable {
    let idBubble: Int
    let value: [ValueModel] // данные показателя будут передаваться
    let textInHeaderBubble: String
    let image: String // для выбора картинки
    
    struct ValueModel: Hashable {
        let scaleMin: Float // данные по минимальной длинне линии
        let scaleMax: Float // данные по максимальной длинне линии
        let value: Float // данные показателя будут передаваться
        let text: String // для названия метрики
        let title: String? // метка, если у анализа две шкалы
        
        init(
            scaleMin: Float,
            scaleMax: Float,
            value: Float,
            text: String,
            title: String? = nil
        ) {
            self.scaleMin = scaleMin
            self.scaleMax = scaleMax
            self.value = value
            self.text = text
            self.title = title
        }
    }
}

extension AnalysisResultModel {
    
    static let exampleArray = [example1, example2, example3, example4, example5]
    
    //MARK: AnalysisResultModel
    static let example1 = AnalysisResultModel(
        idBubble: 1,
        value: [AnalysisResultModel.ValueModel.example1],
        textInHeaderBubble: "Your general mood is bad!",
        image: "Smile"
    )
    
    static let example2 = AnalysisResultModel(
        idBubble: 2,
        value: [
            AnalysisResultModel.ValueModel.example2,
            AnalysisResultModel.ValueModel.example3
        ],
        textInHeaderBubble: "Blood pressure is fine",
        image: "Blood"
    )
    
    static let example3 = AnalysisResultModel(
        idBubble: 3,
        value: [AnalysisResultModel.ValueModel.example4],
        textInHeaderBubble: "Sugar level is a little high",
        image: "Candy"
    )
    
    static let example4 = AnalysisResultModel(
        idBubble: 4,
        value: [AnalysisResultModel.ValueModel.example5],
        textInHeaderBubble: "Your BMI is normal",
        image: "BMI"
    )
    
    static let example5 = AnalysisResultModel(
        idBubble: 5,
        value: [AnalysisResultModel.ValueModel.example6],
        textInHeaderBubble: "Your sleep is a little off",
        image: "Smile"
    )
}

// MARK: ValueModel
extension AnalysisResultModel.ValueModel {
    static let example1 = AnalysisResultModel.ValueModel(
        scaleMin: 1,
        scaleMax: 100,
        value: 70,
        text: "Happy"
    )
    
    static let example2 = AnalysisResultModel.ValueModel(
        scaleMin: 1,
        scaleMax: 200,
        value: 132,
        text: "mmHg",
        title: "Systolic"
    )
    
    static let example3 = AnalysisResultModel.ValueModel(
        scaleMin: 1,
        scaleMax: 100,
        value: 85,
        text: "mmHg",
        title: "Diastolic"
    )
    
    static let example4 = AnalysisResultModel.ValueModel(
        scaleMin: 1,
        scaleMax: 100,
        value: 70,
        text: "mmHg"
    )
    
    static let example5 = AnalysisResultModel.ValueModel(
        scaleMin: 5,
        scaleMax: 7,
        value: 5.6,
        text: "mmHg"
    )
    
    static let example6 = AnalysisResultModel.ValueModel(
        scaleMin: 5,
        scaleMax: 7,
        value: 5.6,
        text: "mmHg"
    )
}


enum GradientChoice {
    case one
    case two
    case three
    
    var colors: [Color] {
        switch self {
        case .one:
            return [Color.lineRedDark, Color.lineRed, Color.lineYelow, Color.lineGreen]
        case .two:
            return [Color.lineRedDark, Color.lineRed, Color.lineYelow, Color.lineGreen, Color.lineYelow, Color.lineRed, Color.lineRedDark ]
        case .three:
            return [Color.lineGreen, Color.lineYelow, Color.lineRed, Color.lineRedDark]
        }
    }
}
