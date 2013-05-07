class AdditiveReference < ActiveRecord::Base
  attr_accessible :meal_id, :additive_id
  
  belongs_to :meal
  belongs_to :additive
  validates :additive_id, :uniqueness => { :scope => :meal_id }
end
