import Foundation

/// 動作テスト
public class Main {
    public init() {
        // ここに処理を記述する
        let manager = Manager()
        _ = manager.register(name: "penAster", prototype: UnderlinePen(char: "*"))
        _ = manager.register(name: "penHyphen", prototype: UnderlinePen(char: "-"))
        _ = manager.register(name: "msBoxAster", prototype: MessageBox(char: "*"))
        
        let pen = manager.create("penAster")
        let pen2 = manager.create("penHyphen")
        let msBox = manager.create("msBoxAster")
        pen.use("text")
        pen2.use("hello, world!")
        msBox.use("text")
    }
}

