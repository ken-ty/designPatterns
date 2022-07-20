/// イテレータを表すインターフェース.
/// 使い方は Sample を参考にして下さい
protocol IteratorProtocol {
    /// 保持する要素の型.
    /// 準拠時に指定して下さい
    associatedtype Element
    /// 次の要素の存在判定メソッド.
    /// ループ時の終了判定に利用して下さい
    func hasNext() -> Bool
    /// 次の要素を返すメソッド
    /// 次の要素がない場合は nil を返します
    func next() -> Element?
}
