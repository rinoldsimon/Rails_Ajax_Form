class Bike < ActiveRecord::Base
  validates :color, presence: true 
end
