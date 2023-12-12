//
//  UnwrapedViewModifer.swift
//  BabyApp
//
//  Created by Vasiliy on 28.11.2023.
//

import SwiftUI

struct UnwrapedViewModifer<Value, Content>: View where Content: View {

    private var content: Content

    init?(
        _ value: Value?,
        @ViewBuilder content: @escaping (Value) -> Content
    ) {
        guard let value = value else { return nil }
        self.content = content(value)
    }

    var body: some View {
        content
    }
}
