import Foundation

/// 動作テスト
public class Main {
    public init() {
        let command = "text" // change "text" or "html" or "usage"
        let story = AllowStory.momotaro
        if command == "text" {
            text(story: story)
        } else if command == "html" {
            html(story: story)
        } else {
            usage()
        }
    }
    
    func text(story: AllowStory) {
        let builder = TextBuilder()
        let director = Director(builder: builder)
        director.construct(story: story)
        let result = builder.getTextResult()
        print(result)
    }
    
    func html(story: AllowStory) {
        let builder = HTMLBuilder()
        let director = Director(builder: builder)
        director.construct(story: story)
        let result = builder.getHTMLResult()
        print("ファイル:", result, "を作成しました")
    }
    
    func usage() {
        print("command: text", "textBuilder accurate")
        print("command: html", "HTMLBuilder accurate")
        print("command: usage", "print usage")
    }
}
