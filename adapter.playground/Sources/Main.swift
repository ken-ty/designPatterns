import Foundation

/// 動作テスト
public class Main {
    public init() {
        let p: Print
        p = PrintBannerInheritance("Hello")
        p.printWeak()
        p.printStrong()
    }
}
