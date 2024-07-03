//
//  HomeView.swift
//  MemoApp
//
//  Created by 鶴見駿 on 2024/07/03.
//

import SwiftUI

struct MemoListingView: View {
    @State private var memoList: [Memo] = []
    
    var body: some View {
        List {
            ForEach(memoList) { memo in
                
            }
        }
    }
}

#Preview {
    MemoListingView()
}
