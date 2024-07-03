import Foundation

extension Date {
    private var dateFormat: DateFormatter {
        let df = DateFormatter()
        df.locale = Locale(identifier: "ja_JP")
        df.dateStyle = .full
        df.timeStyle = .short
        return df
    }
    
    public func getDateString() -> String {
        let dateFormat = self.dateFormat
        return dateFormat.string(from: self)
    }
}
