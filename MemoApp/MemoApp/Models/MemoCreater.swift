//
//  MemoCreater.swift
//  MemoApp
//
//  Created by 鶴見駿 on 2024/07/05.
//

import Foundation

class MemoCreater {
    public func makeMemo(title: String, content: String) -> Memo {
        let newMemo = Memo(title: title, content: content)
        return newMemo
    }
}
