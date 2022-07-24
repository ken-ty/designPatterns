import Foundation

class TextBuilder: Builder {
    private var sb = ""
    override func makeTitle(_ text: String) {
        sb += "titile: \(text)"
        sb += "\n"
        sb += "\n"
    }
    
    override func makeString(_ text: String) {
        sb += "\(text)"
        sb += "\n"
    }
    
    override func makeItems(_ items: [String]) {
        for item in items {
            sb += "* \(item)"
            sb += "\n"
        }
    }
    
    override func close() {
        // 何もしない
    }
    
    func getTextResult() -> String {
        return sb
    }
}
