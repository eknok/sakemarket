# README

## 日本酒を種類、詳細などを見れ、こだわりの日本酒が見つけられるサービス
日本酒の種類、酒造会社、地域などはWikiを参照
https://ja.wikipedia.org/wiki/%E6%97%A5%E6%9C%AC%E9%85%92%E3%81%AE%E9%8A%98%E6%9F%84%E4%B8%80%E8%A6%A7  
（なお、本醸造酒、純米酒などの区別については今回は区別は特にしないものとする
  ※今回は..）

### 使用するAPI
- RakutenWebService - [URL](https://webservice.rakuten.co.jp/api/ichibaitemsearch/)
- Amazon アソシエイト - [URL](https://affiliate.amazon.co.jp/assoc_credentials/home)  
※どちらも画像の表示の為

### 言語
Ruby on Rails (5.1.6)  
Ruby (2.5.1)

### その他
スタイルは Bootstrapを使用
D3.jsを採用するかも..?  

- Github - https://github.com/eknok/sakemarket
- Heroku - https://sakemaker.herokuapp.com

### めも

#### Amazonアフィは審査待ち（二回目）  

#### トップページの画像表示が最悪  
 ->  
   - ◎ スタイル変える（消す）
   - ○ 画像の表示の仕方を変える（サムネっぽくする）
   - ? Amazonの検索結果の画像がどんなもんか..
   - ○ 文字の位置はいいと思う
   - △ D3の出番か！？
     - forceで複数の画像を表示かつ一発で印象が判断できるスタイル  

#### posts/show  

- googlemapの表示  
小さく表示でなんとなく飾り的な感じでいい  

評価の画面配置やどんな評価の仕方にするか
- 画面左側：酒の詳細&口コミ？コメント？ / 右側：googlemapと評価
- 評価の仕方（知らない人がパッと見、どんな酒かわかるような...）
    - おすすめ度（総合）  
    - 飲みやすさ
    - 知名度
    - こだわり
    - ...
（ちょっとわかりにくすぎ？一般的すぎ？）
