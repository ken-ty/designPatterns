import Foundation

/// メソッド use() を実装してるクラス
class IDCard: Product {
    private let owner: String
    init(owner: String) {
        print(owner, "のカードを作ります.")
        self.owner = owner
    }
    
    /// owner の getter
    private func getOwner() -> String {
        return self.owner
    }

    // MARK: - override method
    override func use() {
        print(self, "を使います.")
    }
}

// self が print された時の表示を変更する
extension IDCard: CustomStringConvertible {
    var description: String {
        return "[IDCard: \(self.owner)]"
    }
}
