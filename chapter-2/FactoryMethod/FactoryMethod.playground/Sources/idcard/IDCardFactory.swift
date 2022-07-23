import Foundation

class IDCardFactory: Factory {
    private var table: [Int: String] = [:]
    private var last = 0
    
    public func showTable() {
        print(table)
    }

    // MARK: - overide method
    override func createProduct(_ owner: String) -> Product {
        last += 1
        table[last] = owner
        return IDCard(serial: self.last, owner: owner)
    }
    override func registerProduct(_ product: Product) {
        print(product, "を登録しました.")
    }

}
