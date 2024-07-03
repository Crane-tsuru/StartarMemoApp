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
            }
            .navigationTitle(memo.getTitle())
        }
    }
}

//#Preview {
//    MemoDetailView()
//}
