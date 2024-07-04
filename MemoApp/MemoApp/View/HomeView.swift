//
//  HomeView.swift
//  MemoApp
//
//  Created by 鶴見駿 on 2024/07/04.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    @Environment(\.modelContext) private var context
    @Query private var memoList: [Memo]
    
    @State var writeMemo = false
    
    var body: some View {
        NavigationStack {
            MemoListingView(memoList: memoList)
                .toolbar {
                    Button("新規") {
                        writeMemo = true
                    }
                }
        }.sheet(isPresented: $writeMemo) {
            CreateMemoView()
        }
    }
    
    
    public func add(memo: Memo) {
        context.insert(memo)
    }
    
    public func delete(memo: Memo) {
        
    }
}

#Preview {
    HomeView()
}
