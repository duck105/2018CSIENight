# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: 2.4.1
* Rails version: 5.1.4

* System dependencies

* Configuration

  Copy `database.yml.example` to `database.yml` and change the username / password.


* Database creation

  Basically follow
  https://www.howtoforge.com/tutorial/how-to-install-postgresql-and-phppgadmin-on-opensuse-leap-42.1/
  until Step 4 if no pg was installed.
  
  Otherwise, just follow database initialization below.

* Database initialization

  ``` bash
  bundle exec rake db:create
  bundle exec rake db:migrate
  ```

* How to run the test 

  ``` bash
  rails s: to run the server
  rails c: to enter the console
  ```

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
