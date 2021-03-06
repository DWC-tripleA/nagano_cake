# nagano_cake
DMM WEBCAMPのチーム開発課題です。<br>
架空の洋菓子店「ながのCAKE」の商品を通販するためのECサイトを作成しました。

## 設計図
### ・ER図は<a href="https://drive.google.com/file/d/13Z3V-QZWXK6pTP-DJ5RHCTLFkr37-a6K/view">こちら</a>から
### ・テーブル定義書は<a href="https://docs.google.com/spreadsheets/d/1QpZBrT2l-YN6N0PUiUJeO6qfeTif6C1x7-OetIsNmO4/edit#gid=1642373883">こちら</a>から
### ・アプリケーション詳細設計図<a href="https://docs.google.com/spreadsheets/d/14tAEpxSOaiXrd77oSg-AnLSH_wTFnmqdHQxOwRRcf8A/edit#gid=2133469642">こちら</a>から

## 実装機能
顧客側
* ログイン/ログアウト機能
* 会員登録/退会機能
* 会員情報編集機能
* 商品一覧/詳細表示機能
* カート内に商品追加, カート内商品の一覧表示/編集機能
* 注文機能（支払い方法や配送先の選択も可能）
* 配送先追加/編集機能
* 注文履歴一覧/詳細表示機能 
* 検索機能(商品名、ジャンル名）
* トップページに新着商品のスライドショー

管理側
* ログイン/ログアウト機能
* 注文履歴の一覧/詳細表示機能（注文ステータス, 製作ステータスの切り替えが可能）
* 会員一覧/詳細表示機能（会員ステータスを有効/退会に切り替えが可能）
* 商品一覧/詳細表示機能
* 商品情報変更機能（販売ステータスの変更が可能）
* 商品のジャンル設定機能
* 検索機能(商品名、会員名)

### 言語とフレームワーク
* Ruby2.6.3
* Rails5.2.5
* HTML5
* CSS3
* JQuery

### Gem
* devise
* bootstrap5
* refile/refile-mini_magic
* jquery-rails
* font-awesome-sass
* kaminari

#### 開発メンバー
*斎藤さん
*にし
*みっちー

