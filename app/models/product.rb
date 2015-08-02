class Product < ActiveRecord::Base
  validates_presence_of :name
  validates_numericality_of :quantity
  validates_uniqueness_of :name


 # max_paginates_per 5
  paginates_per 5
  def proper_name
    name.titleize
  end
end
