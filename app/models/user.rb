class User < ActiveRecord::Base
  has_many :beer_user
  has_many :beers, through: :beer_user
end
