require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Please enter your store name."
store_name = gets.chomp
new_store = Store.create(name: store_name, annual_revenue: 0, mens_apparel: false, womens_apparel: false)

puts new_store.errors.messages
