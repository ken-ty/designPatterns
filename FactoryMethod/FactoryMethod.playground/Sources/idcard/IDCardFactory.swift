import Foundation

class IDCardFactory: Factory {
    
    // MARK: - overide method
    override func createProduct(_ owner: String) -> Product {
        return IDCard(owner: owner)
    }
    override func registerProduct(_ product: Product) {
        print(product, "を登録しました.")
    }

}
