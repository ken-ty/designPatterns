import Foundation

enum AllowStory {
    case momotaro
    case urashimataro
    case kintaro
}

class Director {
    private let builder: Builder
    init (builder: Builder) {
        self.builder = builder
    }
    
    // 文書を作成する
    func construct(story: AllowStory) {
        switch story {
        case .momotaro:
            momotaro()
        case .urashimataro:
            urashimataro()
        case .kintaro:
            kintaro()
        }
    }
    
    private func momotaro() {
        builder.makeTitle("桃太郎")
        builder.makeString("昔々あるところに桃太郎がいました.")
        builder.makeString("桃太郎は以下の仲間を連れていました.")
        builder.makeItems(["犬", "猿", "雉"])
        builder.makeString("鬼を倒して幸せに暮らしましたとさ.")
        builder.makeString("")
        builder.makeString("おしまい")
        builder.close()
    }
    
    private func urashimataro() {
        builder.makeTitle("浦島太郎")
        builder.makeString("昔々あるところに浦島太郎がいました.")
        builder.makeString("亀を助け竜宮城に行ったら盛大にもてなされました.")
        builder.makeItems(["豪華な食事", "可憐な踊り子たち", "お土産の玉手箱"])
        builder.makeString("帰って玉手箱を開けた浦島太郎はおじいさんになりましたとさ.")
        builder.makeString("")
        builder.makeString("おしまい")
        builder.close()
    }
    
    private func kintaro() {
        builder.makeTitle("金太郎")
        builder.makeString("昔々あるところに金太郎がいました.")
        builder.makeString("山中で動物といつも遊んでいました.")
        builder.makeItems(["綱引き", "かけっこ", "お相撲", "水泳"])
        builder.makeString("何をやっても金太郎に敵う相手はいませんでした.")
        builder.makeString("あるとき源頼光という偉いお侍さんがやって来ました.")
        builder.makeString("「私の部下と勝負してみないか」")
        builder.makeString("金太郎は部下を全員倒してしまいました.")
        builder.makeString("感動した頼光は金太郎を都に連れて帰りました")
        builder.makeString("都で侍になった金太郎は坂田金時として大活躍しましたとさ.")
        builder.makeString("")
        builder.makeString("おしまい")
        builder.close()
    }
}
