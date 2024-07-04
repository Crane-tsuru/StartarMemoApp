import Foundation
import SwiftData

@Model
class Memo: Identifiable {
    let id = UUID()
    private var title: String
    private var content: String
    private let dateForCreateMemo: Date = Date()
    
    init(title: String, content: String) {
        self.title = title
        self.content = content
    }
}


extension Memo {
    public func getTitle() -> String {
        return self.title
    }
    
    public func getDateForCreateMemo() -> String {
        let dateForCreateMemo = self.dateForCreateMemo
        let dateString = dateForCreateMemo.getDateString()
        return dateString
    }
    
    public func getContent() -> String {
        return self.content
    }
}
