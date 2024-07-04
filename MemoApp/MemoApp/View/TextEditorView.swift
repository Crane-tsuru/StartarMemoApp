//
//  TextEditorView.swift
//  MemoApp
//
//  Created by 鶴見駿 on 2024/07/04.
//

import SwiftUI

struct TextEditorView: View {
    @State var inputText: String
    
    var body: some View {
        ScrollView {
            TextEditor(text: $inputText)
                .frame(width: 300, height: 400)
        }
    }
}

#Preview {
    TextEditorView(inputText: "text")
}
