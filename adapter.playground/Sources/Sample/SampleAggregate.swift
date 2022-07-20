/// サンプルの集合体を表すクラス
class SampleAggregate: IterableProtocol {
    /// 管理する要素群
    private var elements: [Element] = []
    /// 要素数
    private var last = 0
    /// 指定したインデックスが有効か判定する
    private func validateIndex(index: Int) -> Bool {
        var isEnable = true
        // インデックス数が有効範囲内にあること
        let isWithinRange = 0...(self.getLength()-1) ~= index
        isEnable = isEnable && isWithinRange
        
        return isEnable
    }
    /// 指定した位置の要素を取得する. 引数が無効なら nil を返す
    func getElement(at: Int) -> Element? {
        if validateIndex(index: at) == false { return nil }
        return self.elements[at]
    }
    /// 要素を集合に加える
    func append(_ element: Element) {
        self.elements.append(element)
        self.last += 1
    }
    /// 末尾の要素を集合から削除する
    func deleteLast() {
        self.elements.removeLast()
        self.last -= 1
    }
    /// 集合体の長さを取得する
    func getLength() -> Int {
        return self.last
    }
    
    // MARK: - Iterable に準拠する
    typealias Element = Sample
    typealias Iterator = SampleAggregateIterator
    
    func iterator() -> SampleAggregateIterator {
        return SampleAggregateIterator(sampleAggregate: self)
    }
}
