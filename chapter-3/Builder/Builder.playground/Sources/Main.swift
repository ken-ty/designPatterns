import Foundation

/// 動作テスト
public class Main {
    public init() {
        let command = "text" // change "text" or "html" or "usage"
        if command == "text" {
            text()
        } else if command == "html" {
            html()
        } else {
            usage()
        }
    }
    
    func text() {
        let builder = TextBuilder()
        let director = Director(builder: builder)
        director.construct()
        let result = builder.getTextResult()
        print(result)
    }
    
    func html() {
        let builder = HTMLBuilder()
        let director = Director(builder: builder)
        director.construct()
        let result = builder.getHTMLResult()
        print("ファイル:", result, "を作成しました")
    }
    
    func usage() {
        print("command: text", "textBuilder accurate")
        print("command: html", "HTMLBuilder accurate")
        print("command: usage", "print usage")
    }
}
