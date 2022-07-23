# designPatterns

[Java言語で学ぶデザインパターン入門](https://www.hyuki.com/dp/) という書籍を読み進めるにあたり,
サンプルコードを swift に読み替えています.

各デザインパターン毎にディレクトリを配置し, playground で コードを記述しています.
Xcode ≒ Mac 環境 でお試しください.

## 貢献

### prefix
コミットメッセージに prefix をつけて下さい.
今後は [Conventional Commits](https://www.conventionalcommits.org/ja/v1.0.0/#%e6%a6%82%e8%a6%81
) に従います.

- feat [SemVer](https://semver.org/) の MINOR に相当します.
- fix [SemVer](https://semver.org/) の PATCH に相当します.

### 破壊的変更

破壊的変更の際は コミとメッセージに footer をつけて下さい.
- BREAKING CHANGE [SemVer](https://semver.org/) の MAJOR に相当します.

### 影響範囲

必要なら prefix の後に 影響範囲をつけて下さい.
- prefix(`影響範囲`) `影響範囲` に関する prefix な 修正です.

### その他の prefix

[Angular のルール](https://gist.github.com/brianclements/841ea7bffdb01346392c)に触発され, 以下を使います.

- docs ドキュメントの変更のみの時に使用します.
- perf パフォーマンス向上の為の変更に使用します.
- refactor 不具合修正修正でも機能追加でもないコード変更に使用します.
- style: 空白調整などコードに意味のある変更をしない時に使用します.
- chore ライブラリのインストールやコンパイルなどに使用します.

独自ルール

- new 新しく playground を作成した時に使用します.
- rename ファイルや変数名の名称のみの変更に使用します.
- copy 何かをコピーした時に使用します.