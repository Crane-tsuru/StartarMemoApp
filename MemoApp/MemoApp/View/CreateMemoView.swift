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
        VStack {
            Spacer()
            TextField("タイトル", text: $title)
                .frame(width: 300)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            VStack(alignment: .leading) {
                Text("内容")
            }
            TextEditorView(inputText: inputText)
            
            Button(action: {
                
            }, label: {
                Capsule()
                    .frame(width: 200, height: 100)
                    .foregroundColor(.orange)
                    .overlay(Text("保存")
                        .foregroundColor(.white)
                        .font(.title)
                        )
            }).padding()
            
            Spacer()
        }
    }
}

#Preview {
    CreateMemoView()
}
