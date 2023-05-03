require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

print "Enter a store name: "
store_name = gets.chomp
new_store = Store.create(name: store_name)

if (!new_store.errors.any?) then
  puts "Success!"
else
  puts "Error creating #{store_name}: "
  new_store.errors.each{ |err, message|
    puts "#{err} #{message}"
  }
end
