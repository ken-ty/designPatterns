import Foundation

class MessageBox: Product {
    
    private let decochar: Character
    init(char: Character) {
        self.decochar = char
    }
    
    private func decoLine(count: Int) {
        print(String(repeating: decochar, count: count))
    }
    
    /// text を decocharで指定した文字で囲んで表示する
    func use(_ text: String) {
        decoLine(count: 2 + text.count + 2)
        print(decochar, text, decochar)
        decoLine(count: 2 + text.count + 2)
    }
    /// コピーを作成する
    func createCopy() -> Product {
        return MessageBox(char: self.decochar)
    }
    
    
}
