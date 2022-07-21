import Foundation

/// 動作テスト
public class Main {
    public init() {
        let p: PrintClass
        p = PrintBannerDelegate("Hello")
        p.printWeak()
        p.printStrong()
    }
}
