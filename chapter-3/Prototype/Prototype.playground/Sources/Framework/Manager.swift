import Foundation

/// createCopy() を使ってインスタンスを複製するクラス
class Manager {
    private var showcase: [String: Product] = [:]
    /// クラスを登録する
    func register(name: String, prototype: Product) -> Bool {
        if showcase[name] == nil {
            showcase[name] = prototype
            return true
        } else {
            print("既に使用されている名前です")
            return false
        }
    }
    /// 登録されたクラスからインスタンスを作成する
    func create(_ name: String) -> Product {
        if showcase[name] == nil {
            fatalError("登録されていない名前です")
        }
        return showcase[name]!.createCopy()
    }
}
