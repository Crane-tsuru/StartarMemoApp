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
    
    var body: some View {
        NavigationStack {
            MemoListingView(memoList: memoList)
                .toolbar {
                    Button("新規") {
                        
                    }
                }
        }
    }
}

#Preview {
    HomeView()
}