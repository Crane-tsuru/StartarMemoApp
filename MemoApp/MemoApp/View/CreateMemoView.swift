//
//  CreateMemoView.swift
//  MemoApp
//
//  Created by 鶴見駿 on 2024/07/04.
//

import SwiftUI
import SwiftData

struct CreateMemoView: View {
    @Environment(\.modelContext) private var context
    
    @State var isShowAlert = false
    @State var goToHomeView = false
    
    @State var title = ""
    @State var inputText = ""
    
    @FocusState var showKeyboard: Bool
    
    var body: some View {
        VStack {
            Spacer()
            TextField("タイトル", text: $title)
                .frame(width: 300)
                .focused($showKeyboard)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            VStack(alignment: .leading) {
                Text("内容")
            }
            
            TextEditor(text: $inputText)
                .frame(width: 300, height: 400)
                .border(.gray)
                .focused($showKeyboard)
                .toolbar {
                    ToolbarItem(placement: .keyboard) {
                        HStack {
                            Spacer()
                            
                            Button("Done") {
                                showKeyboard = false
                            }
                        }
                    }
                }

            
            Button(action: {
                context.insert(Memo(title: title, content: inputText))
                isShowAlert = true
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
        .alert(isPresented: $isShowAlert) {
            Alert(title: Text("追加しました"), dismissButton: .default(Text("戻る"), action: { goToHomeView = true }))
        }
        .fullScreenCover(isPresented: $goToHomeView) {
            HomeView()
        }
    }
}

#Preview {
    CreateMemoView()
}
