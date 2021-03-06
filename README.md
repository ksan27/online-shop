# myfavorites

<img width="1134" alt="myfavorites" src="https://user-images.githubusercontent.com/73518765/102954594-2909bb00-4517-11eb-9d8f-b8e5ed6a3824.png">

![pink](https://user-images.githubusercontent.com/73518765/102959001-a4706a00-4521-11eb-8a31-886d09412302.jpg)

### 概要
お洋服やコスメ、お洒落が大好きな方に向けたサービスになります。
<br>好きな画像にブランドのurlを登録して、自分好みのブランドまとめサイトが作れます。
<br>ログイン後、uploadボタンから自分専用のホームページにurlを登録し、登録した画像が表示されます。
<br>クリックボタンを押して、登録したURLへ飛べます。

### URL
https://my-favotites0.herokuapp.com/

### テスト用アカウント
email: sample@sample.com
<br>password: a1a1a1

### Basic認証
id: admin
<br>password: 2222

![pink](https://user-images.githubusercontent.com/73518765/102959001-a4706a00-4521-11eb-8a31-886d09412302.jpg)

<img width="1206" alt="スクリーンショット 2020-12-18 15 50 00 2" src="https://user-images.githubusercontent.com/73518765/102955445-3f187b00-4519-11eb-9968-6f4cef6acb13.png">

![pink](https://user-images.githubusercontent.com/73518765/102959001-a4706a00-4521-11eb-8a31-886d09412302.jpg)

### 利用方法
◎トップページから新規登録・ログインが可能です。(⚠︎本サービスはアカウントを作成していないとご利用できません)
<br>◎ログイン後、右上にUPLOADボタンが表示されるので、そちらから画像・ブランドネーム・URLを投稿できます。
<br>◎投稿した画像の下のCLICKボタンを押すと登録したURLに飛ぶことができます。また、投稿された画像の詳細等は、画像をクリックするとご覧いただけます。
<br>◎アカウントを編集したい場合は、ログイン後、右上にある自分の名前をクリックすると詳細ページに移動し編集・削除が可能です。

### 目指した課題解決
お洋服やコスメ、お洒落が大好きな方に向けたサービスになります。
<br>普段はあまり買わないけど「バックが可愛いお店なんだっけ...?」「少し高めのブランドの名前なんだっけ...?」など、好きだけど名前を忘れてしまった！というもやもやに対して、好きなブランドをたくさん登録でき、そのブランドのURLまで飛べるサービスがあれば、思い出す時間が短縮でき、なおかつひとつひとつ検索する時間も短縮できるのではないかと思いサービスを作りました。

![pink](https://user-images.githubusercontent.com/73518765/102959001-a4706a00-4521-11eb-8a31-886d09412302.jpg)

### 要件定義
機能: ログイン・新規登録機能
<br>目的: ユーザーがログイン・ログアウト・新規登録ができるようにする
<br>詳細: トップページに、ログイン・新規登録ボタンを設置し、それぞれのページに飛びログイン等ができる

機能: URL画像投稿機能
<br>目的: ユーザーが、自分の好きなURLと画像、ブランドネームを登録できるようにする
<br>詳細: ログイン後のトップページにて、投稿ボタンをクリックすると、投稿ページに行き投稿ができる

機能: URL詳細表示機能
<br>目的: 登録した詳細ページにいくことができ、登録したURLのページへにも飛べることができるようにする
<br>詳細: 投稿された画像をクリックすると、詳細ページにいける
<br>画像の下のボタンをクリックすると登録したURLのページが表示される

機能: マイページ機能
<br>目的: 自分が登録したURL等を一覧できるようにする
<br>詳細: マイページを作り、自分が登録したURL等を一覧できることと、登録とユーザー詳細ページにいけるボタンがあること

機能: ユーザー編集・削除機能
<br>目的: ユーザーがプロフィールを編集できる
<br>詳細: マイページから、プロフィール編集ボタンを押したら、編集ページに行き編集できる

機能: URL編集・削除機能
<br>目的: 詳細ページから、編集ページにいきURL等の編集と削除ができる
<br>詳細: 詳細ページに、編集ボタンがあり、クリックすると編集ページにいきURL等を変更できる
<br>削除ボタンを押すと登録したURL等が削除され、トップページに戻ることができる

機能: SNS認証機能
<br>目的: ユーザーアカウント登録方法の選択肢を増やしログインしやすくする
<br>詳細: ログイン機能に、googleアカウントで登録できるようにボタンを設置し、登録やログインできるようにする

機能: ブランド検索機能
<br>目的: 検索機能により、使いやすくするため
<br>詳細: マイページに、ブランド検索欄を追加し、名前で検索できるようにする

機能: お気に入り機能
<br>目的: 特にお気に入りのブランドを登録できることで、わかりやすくするため
<br>詳細: ブランド詳細ページからlikeができる。likeしたブランドはプロフィール詳細ページに一覧で表示され、トップページにもlike済みの表示がされる。

![pink](https://user-images.githubusercontent.com/73518765/102959001-a4706a00-4521-11eb-8a31-886d09412302.jpg)

## データベース設計

### users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :shops
- has_many :sns_credentials

### shops テーブル

| Column   | Type       | Options     |
| -------- | ---------- | ----------- |
| name     | string     | null: false |
| shop_url | string     | null: false |
| genre_id | integer    | null: false |
| user        | references  | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :genre_id

### sns_credentials テーブル
| Column   | Type       | Options     |
| -------- | ---------- | ----------- |
| provider | string     | null: false |
| uid      | string     | null: false |
| user     | references | null: false, foreign_key: true |

### Association

- belongs_to :user

### shop_list テーブル
| Column   | Type       | Options     |
| -------- | ---------- | ----------- |
| name     | string     | null: false |
| shop_url | string     | null: false |
| genre_id | integer    | null: false |

### ローカルでの動作方法
必要なコマンド: git clone https://github.com/ksan27/online-shop.git
<br>バージョン: Ruby on rails 6.0.0

![pink](https://user-images.githubusercontent.com/73518765/102959001-a4706a00-4521-11eb-8a31-886d09412302.jpg)

