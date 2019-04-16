require 'bundler'
require 'pry'
require 'brewery_db'
require 'ActiveRecord'
require_all 'app'
require_all 'lib'


Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'
