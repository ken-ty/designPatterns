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
