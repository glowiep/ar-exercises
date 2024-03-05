require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Total revenue for the entire company (all stores)
total_revenue = Store.sum("annual_revenue")
puts "Total revenue for the company is $#{total_revenue}"

# Average store revenue
avg_revenue = Store.average("annual_revenue")
puts "Average store revenue is $#{avg_revenue}"

# number of stores that are generating $1M or more in annual sales
million_annual_sales = Store.where('annual_revenue > ?', 1000000).count
puts "Number of stores with over $1M sales: #{million_annual_sales}"