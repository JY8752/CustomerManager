 README
CustomerManager(アプリ名)
このアプリはサービス販売企業における顧客管理アプリを想定しています。


機能


・ログイン機能


・ハウス作成機能（住所IDをハウスとして管理し、住所情報の登録をする。）


・ハウスの編集


・ユーザーの新規登録、編集、削除（ユーザーには管理者権限を付与するフラグあり）


・顧客検索


・オーダー登録（ハウスに対して新規顧客情報、サービス情報の登録）


開発環境


 言語
 
 
  - Ruby 2.5.1
  
  
 フレームワーク
 
 
  - Ruby on Rails 5.2.3
  
  
 gem
 
 
  - 'slim-rails'
  
  
  - 'html2slim'
  
  
  - 'bootstrap'
  
  
  - 'ransack'
  
  
 データベース
 
 
  - postgresql
  
  
 開発環境
 
 
  - Vagrant
  
  
  - CentOS7
  
  
 デプロイ
 
 
  - heroku
  

You can manage customers,services,users by CustomserManager.
You can make new House(resister address), new Customer and Order by using House.
Each model has bacic CRUDE function.

Model
* House
house model is address information.Houses table have some columns.There are house,address, style, apartment_name, room_number.House is ID number.Only 4 digits.Style is 2 type, apartment or non-apartment(Detached house).
User given admin authority can make new House.

* Customer
Customers table have some columns.There are name, phone_number, birthday.

* Order
Order table have some columns.There are TV, Net, Phone.These are fictional service.

* User
User table have some columuns.There are name, email, password, confirmation_password, admin.
