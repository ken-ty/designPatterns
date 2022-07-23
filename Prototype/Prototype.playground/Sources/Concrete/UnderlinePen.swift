import Foundation

class UnderlinePen: Product {
    
    private let ulchar: Character
    init(char: Character) {
        self.ulchar = char
    }
    
    private func decoLine(count: Int) {
        print(String(repeating: ulchar, count: count))
    }
    
    /// text に ulcharで指定した文字で下線を引いて表示する
    func use(_ text: String) {
        print(text)
        decoLine(count: text.count)

    }
    
    /// コピーを作成する
    func createCopy() -> Product {
        return UnderlinePen(char: self.ulchar)
    }
    
    
}
