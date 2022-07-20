import Foundation

/// アダプタークラス 継承
class PrintBannerInheritance: Banner, PrintProtocol {
    func printWeak() {
        self.showWithParen()
    }
    
    func printStrong() {
        self.showWithAster()
    }
}

/// アダプタークラス 移譲
class PrintBannerDelegate: PrintClass {
    private let banner: Banner
    init(_ text: String) {
        self.banner = Banner(text)
    }
    
    override func printWeak() {
        self.banner.showWithParen()
    }
    
    override func printStrong() {
        self.banner.showWithAster()
    }
}
