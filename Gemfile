source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "2.4.2"

gem 'rails', '~> 5.1.4'
gem 'mysql2'
gem 'puma', '~> 3.7'
gem 'bcrypt', '~> 3.1.7'
gem 'knock'
gem 'jsonapi-rails'
gem 'dotenv-rails'
gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  gem 'pry'
  gem 'pry-byebug'
  # gem 'pry-state'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'capistrano', '~> 3.10'
  gem 'capistrano-rbenv', '~> 2.1'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano3-unicorn'
  gem 'rack-cors', require: 'rack/cors'
end
