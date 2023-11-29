//
//  DataModel.swift
//  BabyApp
//
//  Created by Vasiliy on 29.11.2023.
//

import Foundation

struct MoodsModel {
    
    let scale: Float = 100
    var value: Float = 65
    var text: String = "Happy"
    
}

struct BloodModel {
    
    let scaleSystolic: Float = 200
    let systolic: Float = 132
    var textSystolic: Int = 132
    
    let scaleDiastolic: Float = 100
    let diastolic: Float = 85
    let textDiastolic: Int = 85
    
}

struct ShugarModel {
    
    let scaleShugar: Float = 10
    var valueShugar: Float = 6.5
    var textShugar: String = "6.5"
    
}

struct BMIModel {
    
    let scaleBMI: Float = 45
    var valueBMI: Float = 23
    var textBMI: String = "23"
    
}

struct SleepModel {
    let scaleSleep: Float = 12
    var valueSleep: Float = 5.5
    var textSleep: String = "5.5"
}
