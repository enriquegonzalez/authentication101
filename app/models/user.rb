class User < ActiveRecord::Base
  attr_accessible :name
  
  has_many :restaurants
  has_many :activities
  
end
