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

## configure tests unit with Rspec

- add to gemfile

```ruby
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
```

```bash
bundle install && rails g rspec:install
```

- configure factory_bot and shoulda_matchers

```bash
mkdir spec/support
touch spec/support/{factory_bot,shoulda_matchers}.rb
```

## [Adicione no arquivo spec/support/factory_bot.rb]
```ruby
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end
```
## [Adicione em spec/support/shoulda_matchers.rb]

## generate home controller to root controller

```ruby
Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
```

## [Adicione em spec/rails_helper.rb]

```ruby
require 'rspec/rails'

Dir[Rails.root.join('spec', 'support', '**', '*.rb')].each { |f| require f }
```

```bash
rails g controller Home index
```

- Development Enviroment

``` ruby
rails db:create \
rails db:migrate \
rails db:seed
```