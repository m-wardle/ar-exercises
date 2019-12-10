require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Matt", last_name: "Wardle", hourly_rate: 200)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Vasiliy", last_name: "Klimkin", hourly_rate: 80)
@store1.employees.create(first_name: "James", last_name: "Cash", hourly_rate: 70)
@store2.employees.create(first_name: "David", last_name: "Mills", hourly_rate: 60)
@store2.employees.create(first_name: "Tim", last_name: "Johns", hourly_rate: 60)
@store2.employees.create(first_name: "Victoria", last_name: "Johns", hourly_rate: 65)

puts Employee.count()