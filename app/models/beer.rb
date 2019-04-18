class Beer < ActiveRecord::Base
  has_many :beer_user
  has_many :users, through: :beer_user
end
