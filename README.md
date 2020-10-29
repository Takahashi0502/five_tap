# 5tap
![スクリーンショット 2020-10-23 12 10 27](https://user-images.githubusercontent.com/69100896/96952046-d74db000-1528-11eb-961c-4a3fac78f3c0.png)
## 概要
自分が好きなクラフトビールを見つけられるサービスです。
自分が飲んだビールを探してレビューを書くと、どんなビールを飲んだかがわかります。
世界中でクラフトビールは作られていて、100種類以上のビアスタイルが存在します。
もしまだビールが登録されてなければ、自分でビールを登録してみましょう。

## URL
https://five-tap.herokuapp.com/

## テスト用アカウント
メール：test1@test.com
パスワード:password1

## 利用方法
まず、自分の好きなビールが登録されているか検索フォームより調べてください。
もし好きなビールがあれば、レビューを書いてみましょう。
また他の方のレビューに対してコメントを行うこともできます。
もし自分の好きなビールがない場合は、新しくビールの情報を登録できます。
それ以外に気になるビールを見つけたら、飲みたいね！ボタンを押すことでお気に入りに登録できます。
いつかチャンスがあれば飲んでレビューを投稿してみましょう。

## 開発目的
自分の好みにあったクラフトビールを見つけたいという思いから開発しました。
コロナの影響もあり、飲食店に出かけてビールを飲むという機会も減った今
新しいビールに出会う機会は少なくなっています。
このサービスで、自分にあったビールが見つかればと思い作成しました。
また、自分の好きなビールを他の人とシェアできればと思いSNS形式にしました。

## 要件定義
* ユーザー新規登録/ログイン機能（devise）
* プロフィール登録機能
* 自分の飲みたいビールを登録する機能（ajax通信）
* ビールのレビューに対していいねできる機能(ajax通信)
* ユーザー同士を相互フォローできる機能
* ビール情報を登録/編集/削除できる機能
* レビューにタグをつける機能
* ビールの名前やタグで検索できる機能(ransack)

## 実装機能の詳細
作成中です

## 今後実装予定の機能
* テストコードの記載
* インフラをAWSへ変更

## DB設計
![five_tap](https://user-images.githubusercontent.com/69100896/95412943-1f83a480-0965-11eb-8724-bacf2f2f799d.png)

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
