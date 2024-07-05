//
//  MemoDetailView.swift
//  MemoApp
//
//  Created by 鶴見駿 on 2024/07/04.
//

import SwiftUI

struct MemoDetailView: View {
    let memo: Memo
    
    var body: some View {
        NavigationStack {
            List {
                Text("作成日時: \(memo.getDateForCreateMemo())")
                NavigationLink(destination: TextEditorView(inputText: memo.getContent())) {
                    HStack {
                        Text("内容: \n\(memo.getTitle())")
                    }
                }
//                Text(memo.getContent())

            }
            .navigationTitle(memo.getTitle())
        }
    }
}

//#Preview {
//    MemoDetailView(memo: Memo(title: "れい", content: "あいうえお"))
////    MemoDetailView()
//}
