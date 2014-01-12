A boilerplate sinatra application skeleton for quick deployment to Heroku with Unicorn web server and a simple contact form with [Sendgrid][1]. Inspired from [Sinatra Heroku cedar template by @scottmote][2] and [contact form by @rexkirby][3]

Installation
---------
```
$ git clone git://github.com/scottmotte/sinatra-heroku-cedar-template.git
$ gem install bundler
$ bundle
$ heroku create -s cedar mywebapp
```

Set Sendgrid addon
----------
```
$ heroku addons:add sendgrid:starter --app mywebapp
$ heroku config:get SENDGRID_USERNAME
appXYZ@heroku.com

$ heroku config:get SENDGRID_PASSWORD
password
```

Copy SENDGRID_USERNAME and SENDGRID_PASSWORD in your .env file.
Insert also recipient address in .env file

Putting it on Heroku
-----------
```
$ git push heroku master
$ bundle exec heroku open
```

Running it locally
----------
```
$ git clone git://github.com/scottmotte/sinatra-heroku-cedar-template.git
$ gem install bundler
$ bundle
$ bundle exec foreman start
```
visit localhost:5000 to see the web server running

  [1]: https://devcenter.heroku.com/articles/sendgrid
  [2]: https://github.com/scottmotte/sinatra-heroku-cedar-template
  [3]: http://codepen.io/rexkirby/pen/Fdnlz
