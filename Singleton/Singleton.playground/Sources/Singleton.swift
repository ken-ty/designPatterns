import Foundation

class Singleton {
    private static let singleton = Singleton()
    private init() {
        print("初期化成功")
    }
    public static func getInstance() -> Singleton {
        return self.singleton
    }
}
