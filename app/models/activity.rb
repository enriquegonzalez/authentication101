class Activity < ActiveRecord::Base
  attr_accessible :name, :user_id
  
  belongs_to :restaurant
  
end
