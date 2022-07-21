/// サンプルの集合体をスキャンするクラス
class SampleAggregateIterator: IteratorProtocol {
        
    /// スキャン中の位置を保持する
    private var index = 0
    /// 集合体
    private var sampleAggregate: SampleAggregate
    /// スキャンする集合体を初期化時に与える
    init (sampleAggregate: SampleAggregate) {
        self.sampleAggregate = sampleAggregate
    }
    
    // MARK: - Iterator に準拠する
    typealias Element = SampleAggregate.Element

    func hasNext() -> Bool {
        return index < self.sampleAggregate.getLength()
    }
    func next() -> Element? {
        let nextElementOrNil = self.sampleAggregate.getElement(at: self.index)
        self.index += 1
        return nextElementOrNil
    }
}
