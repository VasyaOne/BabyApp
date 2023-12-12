//
//  AnalysisResultViewModel.swift
//  BabyApp
//
//  Created by Vasiliy on 28.11.2023.
//

import Foundation

final class AnalysisResultViewModel: ObservableObject {
    @Published var fetchedAnalysis: [AnalysisResultModel] = []
    
    func fetchAnalysis() {
        // здесь будет логика сетевого запроса, чтобы получить результаты анализов, пока берутся моковые данные
        self.fetchedAnalysis = AnalysisResultModel.exampleArray
    }
}
