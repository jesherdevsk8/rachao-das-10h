## Rachão das 10h App
## start project with flag -T to skip minitest

```bash
rails new racha -d mysql -T
```

## install and config mailcatcher then test it - _config/environments/development.rb_

```ruby
gem install mailcatcher

config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = { address: 'localhost', port: 1025 }
```

```ruby
ActionMailer::Base.mail(to: 'jesherdevsk8@gmail.com', from: 'ecommerce@test.com', subject: 'Apenas Testando', body: 'Ta funcionando xD').deliver_now!
```

## generate home controller to root controller

```bash
rails g controller Home index
```

- Development Enviroment

``` ruby
rails db:create \
rails db:migrate \
rails db:seed
```