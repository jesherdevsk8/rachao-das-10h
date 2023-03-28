## Rachão das 10h App
## start project with flag -T to skip minitest

```bash
rails new racha -d mysql -T
```

## [ install and config mailcatcher then test it config/environments/development.rb ]

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

## [ add in spec/support/factory_bot.rb ]
```ruby
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end
```
## [ add in spec/support/shoulda_matchers.rb ]

```ruby
Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
```
## [ add in spec/rails_helper.rb ]

```ruby
require 'rspec/rails'

Dir[Rails.root.join('spec', 'support', '**', '*.rb')].each { |f| require f }
```
## generate home controller to root controller


```bash
rails g controller Home index
```

## [ configure devise adding into Gemfile ]

```ruby
gem 'devise'
```
- install

```bash
bundle install && \
rails g devise:install

```

- generate user migration

```bash
rails g devise User
rails db:migrate
```

- generate views

```bash
rails g devise:views
```

## generate dashboard to extract resume

```bash
rails g controller api::v1::dashboard
```