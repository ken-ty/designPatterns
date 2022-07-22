import Foundation

/// 動作テスト
public class Main {
    public init() {
        // ここに処理を記述する
        let factory = IDCardFactory()
        let card1 = factory.create(owner: "Neo")
        let card2 = factory.create(owner: "Morpheus")
        let card3 = factory.create(owner: "Agent Smith")
        
        factory.showTable()

        card1.use()
        card2.use()
        card3.use()
    }
}
