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
    customer.address = "#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.postcode}"
  end
  dot
end

puts "# Seeding Customers"
(1..100).each do |i|
  seed_customer(i)
end
puts "  Done."
