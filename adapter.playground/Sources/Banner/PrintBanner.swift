import Foundation

/// アダプタークラス
class PrintBanner: Banner, Print {
    func printWeak() {
        self.showWithParen()
    }
    
    func printStrong() {
        self.showWithAster()
    }
}
