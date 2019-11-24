##  If Sprockets is not enough, let's think about Webpack.

- If you create new app with webpack, simply execute "rails new app_name --webpack"
- If you want to add webpack for current app...

###  Gemファイルの編集
``` 
shinya@DESKTOP-A5QLPD0:~/rails_app$ tail -n 3 Gemfile

### Java Script Package Manager(Using Yarn)
  gem 'webpacker'
```

### Yarn & Reactインストール
```
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn
bundle install
bin/rails webpacker:install
bin/yarn add react react-dom
```

### Pageで呼び込むように設定
```
shinya@DESKTOP-A5QLPD0:~/rails_app$ cat app/views/layouts/application.html.slim | grep javascript
    = javascript_pack_tag 'application', 'data-turbolinks-track': 'reload'
shinya@DESKTOP-A5QLPD0:~/rails_app$

mkdir app/javascript/rails_app
vim app/javascript/rails_app/hello.js

```

### Javascriptを読み込む
```
shinya@DESKTOP-A5QLPD0:~/rails_app$ tail -n 3  app/javascript/packs/application.js
console.log('Hello World from Webpacker')
import 'rails_app/hello';

```

### Option

 - bin/rails assets:precompile
 - cat config/webpacker.yml
