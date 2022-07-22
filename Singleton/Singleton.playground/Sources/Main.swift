import Foundation

/// 動作テスト
public class Main {
    public init() {
        // ここに処理を記述する
        print("start")
        
        let s = Singleton.getInstance()
        let v = Singleton.getInstance()
        if ObjectIdentifier(s) == ObjectIdentifier(v) {
            print("s と v は同じインスタンスです")
        } else {
            print("s と v は同じインスタンスではありません")
        }
        
        print("end")
    }
}
