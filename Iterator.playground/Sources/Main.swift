import Foundation

/// 動作テスト
public class Main {
    public init() {
        // Aggregateを初期化
        let samples = SampleAggregate()
        // 集合にサンプル要素を追加していく
        samples.append(Sample("吾輩は猫である"))
        samples.append(Sample("舞姫"))
        samples.append(Sample("羅生門"))
        samples.deleteLast() // 羅生門を削除
        samples.append(Sample("注文の多いレストラン"))

        // イテレータ取得
        let samplesIterator = samples.iterator()
        
        // イテレータ動作確認
        // 上記で追加したサンプルを1つずつスキャンして名前を取得する
        while samplesIterator.hasNext() {
            guard let sample = samplesIterator.next() else { break }
            print(sample.getName())
            sleep(1)
        }
    }
}
