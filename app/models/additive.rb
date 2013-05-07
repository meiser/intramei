class Additive < ActiveRecord::Base
  attr_accessible :description, :no
  has_many :additive_references
  has_many :meals, :through => :additive_references
end
