class Meal < ActiveRecord::Base
  attr_accessible :no, :name, :food_price_id
  belongs_to :food_price
  has_many :additive_references
  has_many :additives, :through => :additive_references
  
  validates :no, :presence => true, :uniqueness => true
end
