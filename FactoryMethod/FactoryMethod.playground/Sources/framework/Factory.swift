import Foundation

/// メソッド create() を実装している抽象クラス
class Factory {

    /// Product を作成する
    final public func create(owner: String) -> Product {
        let product : Product
        product = createProduct(owner)
        registerProduct(product)
        return product
    }
    
    // MARK: - expect these method to be overidden
    func createProduct(_ owner: String) -> Product {
        fatalError("サブクラスで実装して下さい")
    }
    func registerProduct(_ product: Product) {
        fatalError("サブクラスで実装して下さい")
    }
}
