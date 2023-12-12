//
//  AnalysisResultView.swift
//  BabyApp
//
//  Created by Vasiliy on 28.11.2023.
//

import SwiftUI

struct AnalysisResultView: View {
    
    @StateObject private var analysisResultVM = AnalysisResultViewModel()
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16) {
            
            AnalysisResultHeaderView()
            
            ScrollView {
                ForEach(analysisResultVM.fetchedAnalysis, id: \.hashValue) { item in
                    AnalysisResultCell(for: item)
                }
            }
        }
        .onAppear {
            analysisResultVM.fetchAnalysis()
        }
    }
}

struct AnalysisResultView_Preview: PreviewProvider {
    static var previews: some View {
        AnalysisResultView()
    }
}
