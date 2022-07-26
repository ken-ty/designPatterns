import Foundation

/// 動作テスト
public class Main {
    public init() {
        // ここに処理を記述する
        // singletonTest()
        // ticketMakerTest()
        threeTest()
    }
    
    // シングルトンの動作テスト
    func singletonTest() {
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
    
    // TicketMaker の動作テスト
    func ticketMakerTest() {
        let tMaker = TicketMaker.getInstance()
        let uMaker = TicketMaker.getInstance()
        print(tMaker.getNextTicketNumber())
        print(uMaker.getNextTicketNumber())

    }
    
    // Three の動作テスト
    func threeTest() {
        let alice = Three.getInstance("Alice")
        let alice2 = Three.getInstance("Alice")
        let bob = Three.getInstance("Bob")
        let chris = Three.getInstance("Chris")
        let anonymas = Three.getInstance("Anonymas")
        print(alice.getName())
        print(alice2.getName())
        print(bob.getName())
        print(chris.getName())
        print(anonymas.getName())
    }
}
