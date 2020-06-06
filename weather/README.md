### renvをインストールしてRubyを管理

```
[admin@postgresql app]$ pwd
/home/admin/app
[admin@postgresql app]$ git clone https://github.com/rbenv/rbenv.git .renv
Cloning into '.renv'...
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (5/5), done.
remote: Total 2852 (delta 0), reused 1 (delta 0), pack-reused 2847
Receiving objects: 100% (2852/2852), 550.56 KiB | 385.00 KiB/s, done.
Resolving deltas: 100% (1781/1781), done.
[admin@postgresql app]$ 

[admin@postgresql app]$ echo 'export PATH="$HOME/app/.renv/bin:$PATH"' >> ~/.bashrc
[admin@postgresql app]$ echo 'eval "$(rbenv init -)"'  >> ~/.bashrc
[admin@postgresql app]$ cat ~/.bashrc 
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export PATH="$HOME/app/.renv/bin:$PATH"
eval "$(rbenv init -)"
[admin@postgresql app]$ 

[admin@postgresql app]$ source ~/.bashrc 
[admin@postgresql app]$ rbenv -v
rbenv 1.1.2-30-gc879cb0
[admin@postgresql app]$ 

```


### ruby-buildをインストールしてrbenvでRubyのインストールを管理しやすくする


```
[admin@postgresql app]$ git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
Cloning into '/home/admin/.rbenv/plugins/ruby-build'...
remote: Enumerating objects: 56, done.
remote: Counting objects: 100% (56/56), done.
remote: Compressing objects: 100% (43/43), done.
remote: Total 10951 (delta 25), reused 30 (delta 10), pack-reused 10895
Receiving objects: 100% (10951/10951), 2.31 MiB | 1.30 MiB/s, done.
Resolving deltas: 100% (7225/7225), done.
[admin@postgresql app]$ 

``` 

- Recommend for Ruby Env
https://github.com/rbenv/ruby-build/wiki

```
yum install -y gcc-6 bzip2 openssl-devel libyaml-devel libffi-devel readline-devel zlib-devel gdbm-devel ncurses-devel

```

### Ruby Install

2020年6月現在の安定版は 2.7.1( https://www.ruby-lang.org/ja/downloads/ )


```
[admin@postgresql app]$ rbenv install  2.7.1
Downloading ruby-2.7.1.tar.bz2...
-> https://cache.ruby-lang.org/pub/ruby/2.7/ruby-2.7.1.tar.bz2
Installing ruby-2.7.1...

Installed ruby-2.7.1 to /home/admin/.rbenv/versions/2.7.1

[admin@postgresql app]$ rbenv global 2.7.1
[admin@postgresql app]$ ruby -v
ruby 2.7.1p83 (2020-03-31 revision a0c7c23c9c) [x86_64-linux]
[admin@postgresql app]$ which ruby
~/.rbenv/shims/ruby
[admin@postgresql app]$ 

```
- Project毎にバージョン指定する場合は、rbenv localでバージョンを指定。


### Rubyパッケージ管理のために、RubyGemsをインストール

Rubyにも同梱されているが、最新版が公開されていることもあるので念のためにアップデート

```
[admin@postgresql app]$ gem update --system
Updating rubygems-update
Fetching rubygems-update-3.1.4.gem
Successfully installed rubygems-update-3.1.4
Parsing documentation for rubygems-update-3.1.4
Installing ri documentation for rubygems-update-3.1.4
Installing darkfish documentation for rubygems-update-3.1.4
Done installing documentation for rubygems-update after 213 seconds
Parsing documentation for rubygems-update-3.1.4
Done installing documentation for rubygems-update after 0 seconds
Installing RubyGems 3.1.4
  Successfully built RubyGem
  Name: bundler
  Version: 2.1.4
  File: bundler-2.1.4.gem
Bundler 2.1.4 installed
RubyGems 3.1.4 installed
Regenerating binstubs
Parsing documentation for rubygems-3.1.4
Installing ri documentation for rubygems-3.1.4

<SNIP>

------------------------------------------------------------------------------

RubyGems installed the following executables:
        /home/admin/.rbenv/versions/2.7.1/bin/gem
        /home/admin/.rbenv/versions/2.7.1/bin/bundle

Ruby Interactive (ri) documentation was installed. ri is kind of like man 
pages for Ruby libraries. You may access it like this:
  ri Classname
  ri Classname.class_method
  ri Classname#instance_method
If you do not wish to install this documentation in the future, use the
--no-document flag, or set it as the default in your ~/.gemrc file. See
'gem help env' for details.

RubyGems system software updated
[admin@postgresql app]$ gem -v
3.1.4
[admin@postgresql app]$ 

[admin@postgresql app]$ gem list

*** LOCAL GEMS ***

benchmark (default: 0.1.0)
bigdecimal (default: 2.0.0)
bundler (default: 2.1.4)
cgi (default: 0.1.0)
csv (default: 3.1.2)
date (default: 3.0.0)
dbm (default: 1.1.0)
delegate (default: 0.1.0)
did_you_mean (default: 1.4.0)

```


### gemのどのバージョンが必要かプロジェクト毎に管理する為にbundlerをインストール

- gemコマンドではプロジェクト毎に管理出来ない為、bundlerが必要。
- projectディレクトリーにGemfileを作成し管理

```
[admin@postgresql app]$ gem install bundler
Fetching bundler-2.1.4.gem
Successfully installed bundler-2.1.4
Parsing documentation for bundler-2.1.4
Installing ri documentation for bundler-2.1.4
Done installing documentation for bundler after 16 seconds
1 gem installed
[admin@postgresql app]$ 
```


### railsインストール

https://railsguides.jp/upgrading_ruby_on_rails.html

```
[admin@postgresql weather]$ ruby -v
ruby 2.7.1p83 (2020-03-31 revision a0c7c23c9c) [x86_64-linux]
[admin@postgresql weather]$ gem install rails -v 6.0
Fetching i18n-1.8.3.gem
Fetching mini_portile2-2.4.0.gem
Fetching nokogiri-1.10.9.gem
Fetching rack-test-1.1.0.gem
<SNIP>
Installing ri documentation for rails-6.0.0
Done installing documentation for concurrent-ruby, i18n, thread_safe, tzinfo, zeitwerk, activesupport, rack, rack-test, mini_portile2, nokogiri, crass, loofah, rails-html-sanitizer, rails-dom-testing, builder, erubi, actionview, actionpack, activemodel, activerecord, globalid, activejob, mini_mime, mail, actionmailer, nio4r, websocket-extensions, websocket-driver, actioncable, mimemagic, marcel, activestorage, actionmailbox, actiontext, thor, method_source, railties, sprockets, sprockets-rails, rails after 248 seconds
40 gems installed
[admin@postgresql weather]$ 
[admin@postgresql weather]$ rails -v
Rails 6.0.0
[admin@postgresql weather]$ 

```


### Node.jsのインストール

- ここでは、nvmを利用してnodeを管理しています。

https://github.com/nvm-sh/nvm
https://github.com/nodesource/distributions


```
[admin@postgresql weather]$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 13527  100 13527    0     0  17475      0 --:--:-- --:--:-- --:--:-- 17476
=> Downloading nvm from git to '/home/admin/.nvm'
=> Cloning into '/home/admin/.nvm'...
remote: Enumerating objects: 290, done.
remote: Counting objects: 100% (290/290), done.
remote: Compressing objects: 100% (257/257), done.
remote: Total 290 (delta 35), reused 97 (delta 20), pack-reused 0
Receiving objects: 100% (290/290), 163.27 KiB | 0 bytes/s, done.
Resolving deltas: 100% (35/35), done.
=> Compressing and cleaning up git repository

=> Appending nvm source string to /home/admin/.bashrc
=> Appending bash_completion source string to /home/admin/.bashrc
=> Close and reopen your terminal to start using nvm or run the following to use it now:

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[admin@postgresql weather]$

[admin@postgresql weather]$ export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[admin@postgresql weather]$ [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[admin@postgresql weather]$ nvm --version
0.35.3
[admin@postgresql weather]$ nvm install stable
Downloading and installing node v14.4.0...
Downloading https://nodejs.org/dist/v14.4.0/node-v14.4.0-linux-x64.tar.xz...
######################################################################## 100.0%
Computing checksum with sha256sum
Checksums matched!
Now using node v14.4.0 (npm v6.14.5)
Creating default alias: default -> stable (-> v14.4.0)
[admin@postgresql weather]$ nvm alias default stable
default -> stable (-> v14.4.0)
[admin@postgresql weather]$ node -v
v14.4.0
[admin@postgresql weather]$ 

```

### 環境

```
[admin@postgresql weather]$ rails -v
Rails 6.0.0
[admin@postgresql weather]$ node -v
v14.4.0
[admin@postgresql weather]$ 
```


### Create New APP


```
[admin@postgresql ruby]$ rails new weather/ -d postgresql
      create  
      create  README.md
      create  Rakefile
      create  .ruby-version
      create  config.ru
      create  .gitignore
      create  Gemfile
         run  git init from "."
Initialized empty Git repository in /home/admin/app/ruby/weather/.git/
      create  package.json
      create  app
      create  app/assets/config/manifest.js
      create  app/assets/stylesheets/application.css
      create  app/channels/application_cable/channel.rb
      create  app/channels/application_cable/connection.rb
      create  app/controllers/application_controller.rb
      create  app/helpers/application_helper.rb

```


#### Rails 6なので以下必要

```
[admin@postgresql weather]$ curl -o- -L https://yarnpkg.com/install.sh | bash
[admin@postgresql weather]$ export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
[admin@postgresql weather]$ rails webpacker:install
```
