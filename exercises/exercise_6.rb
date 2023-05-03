require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Ramic", last_name: "Laguitan", hourly_rate: 18)
@store1.employees.create(first_name: "Dwight", last_name: "Schrute", hourly_rate: 65)
@store2.employees.create(first_name: "Michael", last_name: "Scott", hourly_rate: 40)
@store2.employees.create(first_name: "Daryl", last_name: "Philbin", hourly_rate: 45)

puts @store1.employees.first_name
puts @store2.employees.first_name