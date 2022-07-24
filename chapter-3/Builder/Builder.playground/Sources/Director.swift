import Foundation

class Director {
    private let builder: Builder
    init (builder: Builder) {
        self.builder = builder
    }
    
    // 文書を作成する
    func construct() {
        builder.makeTitle("桃太郎")
        builder.makeString("昔々あるところに桃太郎がいました.")
        builder.makeString("桃太郎は以下の仲間を連れていました.")
        builder.makeItems(["犬", "猿", "雉"])
        builder.makeString("鬼を倒して幸せに暮らしましたとさ.")
        builder.makeString("")
        builder.makeString("おしまい")
        builder.close()
    }
}
