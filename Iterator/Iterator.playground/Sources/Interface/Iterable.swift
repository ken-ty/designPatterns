/// 集合体を表すインターフェース.
/// 使い方は Sample を参考にして下さい
protocol IterableProtocol {
    /// iterator オブジェクトの要素型. 実装時に指定して下さい.
    /// Iterator.Element と同じ Elment を指定して下さい.
    associatedtype Element
    /// iterator オブジェクト. 実装時に指定して下さい.
    associatedtype Iterator: IteratorProtocol where Iterator.Element == Element
    /// イテレータを作成して返す.
    func iterator() -> Iterator
}
