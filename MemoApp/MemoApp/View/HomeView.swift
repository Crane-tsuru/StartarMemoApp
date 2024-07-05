//
//  HomeView.swift
//  MemoApp
//
//  Created by 鶴見駿 on 2024/07/04.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    @Query private var memoList: [Memo]
    
    @State var writeMemo = false
    
    var body: some View {
        MemoListingView(memoList: memoList)
            .toolbar {
                Button("新規") {
                    writeMemo = true
                }
            }.sheet(isPresented: $writeMemo) {
                CreateMemoView()
            }
    }
}

#Preview {
    HomeView()
        .modelContainer(for: Memo.self)
}
