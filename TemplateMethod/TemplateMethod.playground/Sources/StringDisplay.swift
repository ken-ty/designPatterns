import Foundation

// open(), print(), close() を実装しているクラス
class StringDisplay: AbstractDisplay {
    // 表示するための1行を初期化時に与える
    private let text: String
    init(_ text: String) {
        self.text = text
    }
    
    /// 文字数に合わせた線を引く
    private func printLine() {
        Swift.print("+", terminator: "")
        Swift.print(String(repeating: "-", count: self.text.count), terminator: "")
        Swift.print("+", terminator: "")
        Swift.print()
    }
    
    // MARK: - override abstract method
    override func open() {
        printLine()
    }
    
    override func print() {
        Swift.print("|" + self.text + "|")
    }
    
    override func close() {
        printLine()
    }
}
