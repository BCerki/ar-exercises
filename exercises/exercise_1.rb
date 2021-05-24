require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

Store.create(
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true)

Store.create(
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true)

Store.create(
  annual_revenue: 190000,
  mens_apparel: true,
  womens_apparel: false)

  puts "I am the store count #{Store.count}"
