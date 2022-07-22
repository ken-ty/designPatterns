import Foundation

// open(), print(), close() を実装しているクラス
class CharDisplay : AbstractDisplay {
    // 表示するための1文字を初期化時に与える
    private let char: Character
    init(_ char: Character) {
        self.char = char
    }
    
    // MARK: - override abstract method
    override func open() {
        Swift.print("<<", terminator: "")
    }
    
    override func print() {
        Swift.print(self.char, terminator: "")
    }
    
    override func close() {
        Swift.print(">>", terminator: "")
    }
}
