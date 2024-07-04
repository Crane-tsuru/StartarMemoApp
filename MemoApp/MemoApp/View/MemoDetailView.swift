//
//  MemoDetailView.swift
//  MemoApp
//
//  Created by 鶴見駿 on 2024/07/04.
//

import SwiftUI

struct MemoDetailView: View {
    private let memo: Memo
    
    var body: some View {
        NavigationStack {
            List {
                Text("作成日時: \(memo.getDateForCreateMemo())")
                NavigationLink(destination: TextEditorView(inputText: memo.getDescription())) {
                    Text("内容: \n\(memo.getTitle())")
                }
            }
            .navigationTitle(memo.getTitle())
        }
    }
}

//#Preview {
//    MemoDetailView()
//}
