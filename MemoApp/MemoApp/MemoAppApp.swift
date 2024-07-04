//
//  MemoAppApp.swift
//  MemoApp
//
//  Created by 鶴見駿 on 2024/07/03.
//

import SwiftUI
import SwiftData

@main
struct MemoAppApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .modelContainer(for: Memo.self)
        }
    }
}
