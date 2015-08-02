# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'
include Faker


Product.destroy_all
formats = %w(beta VHS IMAX HS SuperHD 4k DVD)
images = %w(picture1.jpg picture2.jpg picture3.jpg)

100.times do
  product = Product.create(:name => "#{Company.bs}",
                           :price => '56',
                           :description=>Lorem.paragraphs.join("<br/>"),
                           :cost=>'566', :quantity=>'500',
                           :image=>"products/"+ images[rand(images.length)],
                           :comment =>formats[ rand(formats.length)],
                           :thumbnail=>'products/picture1.jpg')
  puts product.inspect

end


