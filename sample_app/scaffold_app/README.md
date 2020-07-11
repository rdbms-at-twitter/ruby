# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* This is simple evaluation for redcarpet and coderay for using  Syntax highlighter


* Generate Sample and modify application_helper.rb and show.html.erb for testing purpose.
```
shinya@DESKTOP-A5QLPD0:~/scaffold_app$ rails generate scaffold Article title:string body:text
shinya@DESKTOP-A5QLPD0:~/scaffold_app$ bundle exec rake db:migrate
== 20191130015524 CreateArticles: migrating ===================================
-- create_table(:articles)
   -> 0.0513s
== 20191130015524 CreateArticles: migrated (0.0522s) ==========================
```

* ...


### Please Run with following command

```
 bin/rails s
```
or
```
 bin/rails s -b 0.0.0.0
```
