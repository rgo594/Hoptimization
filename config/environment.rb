require 'bundler'
require 'pry'
require 'brewery_db'
require 'active_record'
require 'require_all'




# Bundler.require
#
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: '../Hoptimization.db')
require_all 'lib'
require_all 'app'
