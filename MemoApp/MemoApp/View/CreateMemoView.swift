//
//  CreateMemoView.swift
//  MemoApp
//
//  Created by 鶴見駿 on 2024/07/04.
//

import SwiftUI

struct CreateMemoView: View {
    @State var title = ""
    @State var inputText = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            TextField("タイトル", text: $title)
                .frame(width: 300)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text("内容")
            TextEditorView(inputText: inputText)
            
        }
    }
}

#Preview {
    CreateMemoView()
}
