import Foundation

class Singleton {
    private static let singleton = Singleton()
    private init() {
        print("singletonがインスタンス化された時に通る")
    }
    public static func getInstance() -> Singleton {
        return self.singleton
    }
}
