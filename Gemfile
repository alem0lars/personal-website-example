source :rubygems

gem 'rails',                      '3.2.8'

gem 'pg',                         '~> 0.13.2'
gem 'faker',                      '~> 1.0.1'
gem 'rails_config',               '~> 0.3.1'
gem 'devise',                     '~> 2.1.2'
gem 'kaminari',                   '~> 0.13.0'
gem 'haml-rails',                 '~> 0.3.4'
gem 'jquery-rails',               '~> 2.1.1'
gem 'gon',                        '~> 4.0.0'
gem 'paperclip',                  '~> 3.0.0'

group :doc do
  gem 'RedCloth',                 '~> 4.2.9',     :require => 'redcloth'
end

# Gems used only for assets and not required in production environments by default.
group :assets do
  gem 'sass-rails',               '~> 3.1'
  gem 'compass-rails',            '~> 1.0.1'
  gem 'bootstrap-sass',           '~> 2.0.4.1'
  gem 'coffee-script',            '~> 2.2.0'
  gem 'coffee-filter',            '~> 0.1.1'
  gem 'uglifier',                 '~> 1.0.3'
end

group :development do
  # { capistrano
  gem 'capistrano'
  gem 'capistrano_colors',        '~> 0.5.5'
  gem 'capistrano-unicorn',       '~> 0.1.6'
  gem 'rvm-capistrano',           '~> 1.2.5'
  # }
  # { testing and debugging
  gem 'ruby-debug19',             '~> 0.11.6'
  # }
  # { misc
  gem 'awesome_print',            '~> 1.0.2'
  gem 'pry-rails',                '~> 0.2.1'
  gem 'railroady',                '~> 1.0.8'
  # }
end

group :test do
  gem 'ruby-prof',                '~> 0.11.2'
  gem 'factory_girl_rails',       '~> 4.0.0'
  gem 'capybara',                 '~> 1.1.2'
end

group :test, :development do
  gem 'database_cleaner',         '~> 0.8.0'
  gem 'rspec-rails',              '~> 2.11.0'
  gem 'guard',                    '~> 1.3.2'
  gem 'guard-rspec',              '~> 1.2.1'
  gem 'guard-bundler',            '~> 1.0.0'
  gem 'guard-livereload',         '~> 1.0.0'
  gem 'rb-fsevent',               '~> 0.9.1'
end
