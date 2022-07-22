import Foundation

// dhisplay() のみ実装されている抽象クラス
class AbstractDisplay {
    /// display() で使用します. 具象クラスで実装して下さい.
    func open() {
        fatalError("具象クラスで実装して下さい")
    }
    
    /// display() で使用します. 具象クラスで実装して下さい.
    func print() {
        fatalError("具象クラスで実装して下さい")
    }

    /// display() で使用します. 具象クラスで実装して下さい.
    func close() {
        fatalError("具象クラスで実装して下さい")
    }
    
    /// 表示する. 具体的な表示方法は具象クラスで決める.
    func display() {
        open()
        for _ in 0..<5 {
            print()
        }
        close()
    }


}
