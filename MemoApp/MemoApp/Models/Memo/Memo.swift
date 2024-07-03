import Foundation

struct Memo: Identifiable {
    let id = UUID()
    private var title: String
    private var description: String
    private let makeDate: Date = Date()
}

extension Memo {
    
}
