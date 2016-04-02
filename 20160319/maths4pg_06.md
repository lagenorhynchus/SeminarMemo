第6回 プログラマのための数学勉強会
================================

## 心地よさと数字

data visualisation
行動、記憶、話題

ものの多角的な見方、視点
星座
地図

データ + ルール + 実体化

ビジュアル変数
絵としての面白さ・心地良さ

インタラクションデザイン
心地良さ、情動

完成されたものを疑う
原理・原則
可視化


## 数学がデジタルアートに！ 高速なシェーダで可視化する数学の世界

WebGL、シェーダ
JS→ブラウザ
cf. OpenGL ES

GLSL、シェーダ言語

[GLSL editor](http://school.souhonzan.org/ge/)

gl_FragCoord: ピクセル座標
gl_FragColor: RGBA (0.0-1.0)


## Wolfram Language コトハジメ 〜 Wolfram Alpha って聞いたことあります？

Stephen Wolfram→Mathematica
"Wolfram Language"

[Wolfram|Alpha](https://www.wolframalpha.com/)

Mathematica as an IDE
cf. IPython, Jupyter

Wolfram Language vs. Python(Numpy, Scipy, Sympy)
関数が多いので簡潔に実装できる


## 暗号文のままで計算しよう - 準同型暗号入門 -

cf.『クラウドを支えるこれからの暗号技術』

### 準同型暗号(homomorphic encryption)

暗号化
→暗号文から平文の情報が得られない
→何もできない

クラウド→暗号化したまま処理したい!
⇒準同型暗号

加法準同型暗号

楕円ElGamal

楕円曲線 y^2 = x^3 + ax + b
トーラス(浮き輪の表面)
→切り開くと長方形
→ベクトルの計算

点Pをx倍して点Qにするのは易しいが
点P, Qからxを求めるのは難しい
Q = xP
楕円離散対数問題

加法準同型
足し算のみできる

### 完全準同型(fully HE)
cf. 数学的には「環準同型」
XORとANDで任意の関数が作れる(完全)

cf. LWE(Learning With Errors)問題

加法準同型&乗法準同型
足し算と掛け算ができる

演算回数が増えるとノイズも増える→復号に失敗する
Somewhat HE(SHE)
ブートストラップ


## 圏論とHaskellは仲良し

法政大学

### 圏論
最も抽象的な数学
各分野を圏(category)として共通するものを扱う

1. 対象(cf.集合)
2. 射(cf.関数)
3. ソース、ターゲット
4. 恒等射
5. 合成(結合律)

### 関手(functor)

米田の補題
随伴関手

### Universal Properties

e.g. 積の定義
最大公約数、積集合

e.g. 和の定義
最小公倍数、和集合

### Haskell

関数型言語
howではなくwhatを記述
圏論がベース

対象→データ型
射→関数(クラス・インスタンス)
ソース、ターゲット→シグニチャ

随伴関手→モナド
⇒DSL

Functional Reactive Programming(FRP)
振る舞い: 時間を変数とする関数(e.g. 曲)
イベント: ある時間での事象(e.g. ピアノの打鍵)

ボールの衝突シミュレーション

> Category Therory for the Sciences
> Functional Reactive Programming
