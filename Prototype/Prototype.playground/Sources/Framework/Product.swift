import Foundation

/// use() と createCopy() が宣言されているインターフェース
protocol Product {
    /// 製品を使用する
    func use(_ text: String)
    /// インスタンスを複製する
    func createCopy() -> Product
}
