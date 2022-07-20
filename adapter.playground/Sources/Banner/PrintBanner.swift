import Foundation

/// アダプタークラス 継承
class PrintBannerInheritance: Banner, Print {
    func printWeak() {
        self.showWithParen()
    }
    
    func printStrong() {
        self.showWithAster()
    }
}
