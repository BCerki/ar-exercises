require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
#Burnaby store
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Bob", last_name: "Smith", hourly_rate: 6)
@store1.employees.create(first_name: "Fred", last_name: "Penner", hourly_rate: 50)

#Richmond store
@store2.employees.create(first_name: "Bon", last_name: "Jovi", hourly_rate: 6)
@store2.employees.create(first_name: "Keita", last_name: "Mori", hourly_rate: 600)

# p @store2
