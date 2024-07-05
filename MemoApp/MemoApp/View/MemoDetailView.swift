//
//  MemoDetailView.swift
//  MemoApp
//
//  Created by 鶴見駿 on 2024/07/04.
//

import SwiftUI

struct MemoDetailView: View {
    let memo: Memo
    
    @State var isShowAlert = false
    @State var goToHomeView = false
    
    @Environment(\.modelContext) private var context
    
    var body: some View {
        NavigationStack {
            List {
                Text("作成日時: \(memo.getDateForCreateMemo())")
                NavigationLink(destination: CreateMemoView(title: memo.getTitle(), inputText: memo.getContent())) {
                    HStack {
                        Text("内容: \n\(memo.getContent())")
                    }
                }

            }
            .navigationTitle(memo.getTitle())
            
            Button("削除") {
                context.delete(memo)
            }
            Spacer()
        }
        .alert(isPresented: $isShowAlert) {
            Alert(title: <#T##Text#>, message: <#T##Text?#>, primaryButton: <#T##Alert.Button#>, secondaryButton: <#T##Alert.Button#>)
        }
        .fullScreenCover(isPresented: $goToHomeView) {
            HomeView()
        }
    }
}

//#Preview {
//    MemoDetailView(memo: Memo(title: "れい", content: "あいうえお"))
////    MemoDetailView()
//}
