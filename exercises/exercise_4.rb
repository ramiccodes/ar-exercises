require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

store4 = Store.new(
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
)

store4.save

store5 = Store.new(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
)

store5.save

store6 = Store.new(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
)

store6.save

@i = 0

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each {|i| 
puts i.name
puts i.annual_revenue }

@womens_stores = Store.where(["womens_apparel = ? and annual_revenue < ?", true, 1000000])

@womens_stores.each {|i| 
puts i.name
puts i.annual_revenue }