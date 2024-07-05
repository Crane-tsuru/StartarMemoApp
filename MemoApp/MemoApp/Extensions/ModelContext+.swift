import SwiftData

extension ModelContext {

    func updateMemo(memo: Memo, memoList: [Memo]) {
        guard let updatingMemoIndex = memoList.firstIndex(where: {$0.id == memo.id}) else { return }
        let deletedMemo = memoList[updatingMemoIndex]
        
        self.delete(deletedMemo)
        self.insert(memo)
    }

}
