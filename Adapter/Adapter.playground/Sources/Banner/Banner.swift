import Foundation

// 既存クラス
class Banner {
    private let string: String
    init(_ text: String) {
        self.string = text
    }
    
    /// 括弧で括って文字列を表示する
    func showWithParen() {
        print("(\(self.string))")
    }
    
    /// 文字列の前後に*をつけて*表示する
    func showWithAster() {
        print("*\(self.string)*")
    }
}
