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

