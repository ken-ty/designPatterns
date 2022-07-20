import Foundation

/// 動作テスト
public class Main {
    public init() {
        let p: PrintProtocol
        p = PrintBannerInheritance("Hello")
        p.printWeak()
        p.printStrong()
    }
}
