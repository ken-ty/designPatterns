import Foundation

class TicketMaker {
    private var ticket = 1000;
    private static let singleton = TicketMaker()
    private init() {
        print("初期化成功")
    }
    /// singleton なインスタンスを返す
    public static func getInstance() -> TicketMaker {
        return singleton
    }
    
    public func getNextTicketNumber() -> Int {
        let num = ticket
        ticket += 1
        return num
    }
}
