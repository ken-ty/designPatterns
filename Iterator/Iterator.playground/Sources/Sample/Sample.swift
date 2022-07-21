/// サンプルを表すクラス
class Sample {
    // 名前
    fileprivate let name : String
    init (_ name: String) {
        self.name = name
    }
    
    // 名前を取得する
    func getName() -> String {
        return self.name
    }
}
