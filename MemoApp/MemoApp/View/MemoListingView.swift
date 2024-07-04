//
//  HomeView.swift
//  MemoApp
//
//  Created by 鶴見駿 on 2024/07/03.
//

import SwiftUI
import SwiftData

struct MemoListingView: View {
    @Environment(\.modelContext) private var context
    @Query private var memoList: [Memo]
    
    var body: some View {
        List {
            ForEach(memoList) { memo in
                NavigationLink(destination: MemoDetailView(memo: memo)) {
                    Text(memo.getTitle())
                }
            }
        }
    }
}

#Preview {
    MemoListingView()
}
