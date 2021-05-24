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

selected_store = gets.chomp
new_store = Store.create(name: selected_store)
p new_store
#test the revenue greater than error (first checks if its a number)
# new_store = Store.create(name: selected_store, annual_revenue: -5)
new_store.valid?
new_store.errors.full_messages.each do |message|
  puts message
end

