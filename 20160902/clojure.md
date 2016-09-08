Clojure 大座談会 - Clojure の活用事例共有回 -
=============================================

## 活かすClojure DevOps編

- インフラ
- CMS(Webアプリマネジメントサービス)

### Clojure
- 最初の敷居の高さ
- モチベーション

### システム構成?
- インタラクティブ開発
- フレームワークやコンテナなど少ない
- ランタイム環境が複数: JVM, Node, browser
- Data as Interface: 自由度は高い

### アプリ開発での利点
- serialize/deserializeがシンプル
- FP→状態を追う必要なし
- 大規模データでも楽
- パフォーマンスチューニングも楽、関数単位で


### Ops
開発設計、運用構築

### DevOpsで気にすること
1. 大局的に: 本番/ステージング/テストインフラ運用も、サービスの全体合理性
1. キャッシュアウトも一応気にする
1. プログラムはためらわない

ClojureとDevOps

cf. https://12factor.net/

- VI. Processes: immutable
- VII. Port binding
- IX. Disposability
- X. Dev/prod parity

1. APインスタンスはAMI/Dockerイメージごとswap
1. data, logはAPインスタンスに持たない

- CloudFormation(AWS Resource生成)
- Lambda(CloudFormationを補完)
- Ansible(provision)
- Packer(AMI/Docker)
- Logstash(log)

### もっと
- ClojureScriptを活用: cljs-lambda
- config, adminでClojureのインタラクティブ性を活用

### profiling
関数の呼び出し回数と滞在時間

---

## Building Automation Sysmtemへの適用

ビル設備とBuilding Automation Sysmtem

- 空調機器販売
- 工場自動化(factory automation)とビル自動化(building automation)
- 中央監視
- 自動制御
- BEMS, HEMS
- 計測と制御: センサ、アクチュエータ
- 計装機器
- DDC(direct digital controller)、調節計、PID制御、PLC、ラダープログラム
- Webコントローラ→Embedded VC++⇒Clojure

### マクロによる抽象化
- コピペを回避
- マクロで構造を一般化
- 環境は動的束縛

### リアクティブプログラミング
時々刻々と計測される値

https://github.com/weavejester/reagi

cf. core.async + transducers

### DSL
- .edn設定ファイル
- 自動制御
