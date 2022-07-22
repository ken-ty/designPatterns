import Foundation

/// メソッド use() を実装してるクラス
class IDCard: Product {
    /// 初期化時に カードのオーナーをsetする
    private let owner: String
    private let serial: Int
    init(serial: Int, owner: String) {
        print(owner, "のカードを", serial, "番で作ります.")
        self.serial = serial
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
