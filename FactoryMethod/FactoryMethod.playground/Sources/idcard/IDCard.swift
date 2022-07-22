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
