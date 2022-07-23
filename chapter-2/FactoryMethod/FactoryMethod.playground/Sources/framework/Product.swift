import Foundation

// 抽象メソッド use のみ定義されている抽象クラス
class Product {
    func use() {
        fatalError("サブクラスで実装して下さい")
    }
}
