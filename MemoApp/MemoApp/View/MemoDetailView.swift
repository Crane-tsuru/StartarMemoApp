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
                NavigationLink(destination: TextEditor(text: .constant("れい"))) {
                    HStack {
                        Text("内容: \n\(memo.getContent())")
                    }
                }

            }
            .navigationTitle(memo.getTitle())
            
            Button("削除") {
                
            }
        }
    }
}

//#Preview {
//    MemoDetailView(memo: Memo(title: "れい", content: "あいうえお"))
////    MemoDetailView()
//}
