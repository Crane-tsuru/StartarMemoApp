import Foundation

struct Memo: Identifiable {
    let id = UUID()
    private var title: String
    private var description: String
    private let dateForCreateMemo: Date = Date()
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
    
    public func getDescription() -> String {
        return self.description
    }
}
