# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'rubygems'
require 'faker'

def dot
  print '.'
end

def seed_customer(i)
  Customer.find_or_create_by(email: "customer_#{i}@backstore.com") do |customer|
    customer.name = Faker::Name.name
    customer.phone = Faker::PhoneNumber.phone_number
    city = Faker::Address.city
    pincode = Faker::Address.zip
    customer.address = "#{Faker::Address.street_address}, #{city}, #{pincode}"
    customer.city = city
    customer.pincode = pincode
  end
  dot
end

def seed_product_cateogory(name)
  ProductCategory.find_or_create_by(name: name)
  dot
end

puts "# Seeding Customers"
(1..100).each do |i|
  seed_customer(i)
end
puts "  Done."

puts "# Seeding Product Categories"
["Mobiles", "Wearables", "Home Automation", "Tablets", "Laptops", "Computer Peripherals", "Mobile Accessories", "Headphones", "Tablet Accessories", "Computer Accessories", "Network Components", "Televisions", "Large Appliances", "Healthcare Appliances", "Small Appliances", "Kitchen Appliances"].each do |name|
  seed_product_cateogory(name)
end
puts "  Done."
