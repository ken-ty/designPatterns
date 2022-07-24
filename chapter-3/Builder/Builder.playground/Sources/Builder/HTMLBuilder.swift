import Foundation

class HTMLBuilder: Builder {
    
    private let filename = "unknown.html"
    private var sb = ""
    override func makeTitle(_ text: String) {
        sb += "<!DOCTYPE html>\n"
        sb += "<html>\n"
        sb += "<head><title>\(text)</title></head>\n"
        sb += "<body>\n"
        sb += "<h1>\(text)</h1>\n\n"
    }
    
    override func makeString(_ text: String) {
        sb += "<p>\(text)</p>\n"
    }
    
    override func makeItems(_ items: [String]) {
        sb += "<ul>\n"
        for item in items {
            sb += "<li>\(item)</li>\n"
        }
        sb += "</ul>\n"
    }
    
    override func close() {
        sb += "\n</body></html>\n"
        // テキストの書き込みを実行
        do {
            guard let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
                fatalError("フォルダURL取得エラー")
            }
            let fileUrl: URL = dir.appendingPathComponent(filename)
            try sb.write(to: fileUrl, atomically: false, encoding: .utf8)
        } catch {
            fatalError("書き込みに失敗しました")
        }
    }
    
    /// ファイルに書き込んで, 書き込んだファイルの名前を返す
    func getHTMLResult() -> String {
        return filename
    }
    
}
