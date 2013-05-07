class FoodPrice < ActiveRecord::Base
  attr_accessible :price
  has_many :meals, :dependent => :restrict
  validates :price, :presence => true
end
