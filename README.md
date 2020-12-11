# README

## myfavorites
お洋服やコスメ、お洒落が大好きな方に向けたサービスになります。
<br>好きな画像にブランドのurlを投稿して、自分好みのブランドまとめサイトが作れます。

### URL
https://my-favotites0.herokuapp.com/

### テスト用アカウント
email: sample@sample.com
<br>password: a1a1a1

### Basic認証
id: admin
<br>password: 2222

### 利用方法
トップページから新規登録・ログインが可能です。(⚠︎本サービスはアカウントを作成していないとご利用できません)
<br>ログイン後、右上にUPLOADボタンが表示されるので、そちらから画像・ブランドネーム・URLを投稿できます。
<br>投稿した画像の下のCLICKボタンを押すと登録したURLに飛ぶことができます。また、投稿された画像の詳細等は、画像をクリックするとご覧いただけます。
<br>アカウントを編集したい場合は、ログイン後、右上にある自分の名前をクリックすると詳細ページに移動し編集・削除が可能です。

### 目指した課題解決
お洋服やコスメ、お洒落が大好きな方に向けたサービスになります。
<br>普段はあまり買わないけど「バックが可愛いお店なんだっけ...?」「少し高いけど世界観が可愛いブランドの名前なんだっけ...?」など、好きだけど名前を忘れてしまった！というもやもやに対して解決をしたいと思いサービスを作りました。
<br>インスタグラムだと、フォローしている人が多いと探すのが大変だと感じたので、一覧ページに全てまとめられるようにし、クリックしたらURLに飛ぶ仕組みを作りました。


## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :shops
- has_many :sns_credentials

## shops テーブル

| Column   | Type       | Options     |
| -------- | ---------- | ----------- |
| title    | string     | null: false |
| shop_url | string     | null: false |
| user     | references | null: false, foreign_key: true |

### Association

- belongs_to :user

### sns_credentials テーブル
| Column   | Type       | Options     |
| -------- | ---------- | ----------- |
| provider | string     | null: false |
| uid      | string     | null: false |
| user     | references | null: false, foreign_key: true |

- belongs_to :user
