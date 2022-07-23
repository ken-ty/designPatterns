import Foundation

// インスタンスを3つしか持たない
class Three {
    private static let name2Instance = [
        "Alice" : Three("Alice"),
        "Bob" : Three("Bob"),
        "Chris" : Three("Chris")
    ]
    private let name: String
    private init(_ name: String) {
        self.name = name
    }
    /// 名前に対応するインスタンスを返す
    static func getInstance(_ name: String) -> Three {
        return name2Instance[name] ?? Three("No Name")
    }
    
    func getName() -> String {
        return self.name
    }
}
