![スクリーンショット 2020-10-23 12 10 27](https://user-images.githubusercontent.com/69100896/96952046-d74db000-1528-11eb-961c-4a3fac78f3c0.png)
## 概要
クラフトビールのレビューサイトです。  
自分が飲んだビールをレビュー（ビア活）することができます。  
飲んだことがないビールは飲みたい！機能でチェックできます。  
他のユーザーのビア活も見ることができるので、気になるユーザーはフォローしましょう。

## URL
https://www.five-tap.com/

## テスト用アカウント
ID(メールアドレス)：test1@test.com  
パスワード:password1

## 利用方法
気になるビールを検索して、飲んだビールのレビューを書いてみましょう。  
自分で新しいビールの登録やビール情報の修正が可能です。  
気になるビールは飲みたい！でチェックできます。

## 開発目的
自分の好みにあったクラフトビールを見つけたいという思いから開発しました。コロナの影響もあり、飲食店に出かけてビールを飲むという機会も減った今新しいビールに出会う機会は少なくなっています。  
このサービスで、自分にあったビールが見つかればと思い作成しました。また、自分の好きなビールを他の人とシェアできればと思いSNS形式にしました。

## 要件定義
* ユーザー新規登録/ログイン機能（devise）
* プロフィール登録機能
* 飲んだビールのレビュー（ビア活）機能
* ビア活にタグをつける機能
* ビア活に対するコメント機能
* ビア活やコメントにいいねできる機能(ajax通信)
* 新しいビールを登録/編集/削除する機能
* ビールに対して「飲みたい！」する機能（ajax通信）
* ユーザー同士を相互フォローできる機能(ajax通信)
* ビールの名前やタグで検索できる機能(ransack)

## 実装機能の詳細
作成中です

## 今後実装予定の機能
* マイページでいいねしたビア活を表示できるように修正

## DB設計
![five_tap](https://user-images.githubusercontent.com/69100896/95412943-1f83a480-0965-11eb-8724-bacf2f2f799d.png)

## インフラ構成図
![fivetap構成図](https://user-images.githubusercontent.com/69100896/99389564-945ddd00-291a-11eb-8cb1-a46be13302eb.png)

## ローカルでの動作方法
<使用パッケージやバージョン情報>
* rbenv
* RubyGems
* Bundler
* ruby 2.6.5
* rails 6.0.0

`git clone`後のローカルでの動作までの手順を記載します。
1. アプリのあるディレクトリに移動
2. `bundle install`を実行しgemをインストール
3. `rails db:create`でDBを作成
4. `rails db:migrate`でテーブルを作成
5. `rails s`でサーバーを立ち上げてください
