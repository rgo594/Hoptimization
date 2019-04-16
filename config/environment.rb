require 'bundler'
require 'pry'
require 'brewery_db'
require_all 'app'




Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'
