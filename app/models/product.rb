class Product < ActiveRecord::Base
  validates_presence_of :name
  validates_numericality_of :quantity
  validates_uniqueness_of :name
end
