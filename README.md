 README
CustomerManager(アプリ名) http://portforio.mycustomermanager.com/

このアプリはサービス販売企業における顧客管理アプリを想定しています。
住所に'ハウス'というIDを割り当て、そのハウスを元に顧客情報、サービス内容を
登録・参照ができます。

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
  
  
 データベース・サーバー
 
 
  - postgresql
  - nginex(webサーバー)
  - puma(アプリサーバー)
  
  
 ローカル開発環境
 
 
  - Vagrant(VirtualMachine)
  
  - docker(学習中)
  
  
  - CentOS7
  
  
 インフラ
 
  - AWS(EC2)
   - ElasticIP
   - Route 53
   - RDS
   - ロードバランサー(HTTPS通信)
  - heroku
  
　CI/CD
   - circleCI(学習中)
   - capistrano(学習中)
