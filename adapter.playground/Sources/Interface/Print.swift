import Foundation

/// 新規インターフェース
protocol Print {
    /// 文字列を弱く表示する
    func printWeak()
    /// 文字列を強く表示する
    func printStrong()
}
