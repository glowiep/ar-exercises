require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Loading a subset of stores
Surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each { |store| puts "Store Name: #{store.name}, Store Revenue: #{store.annual_revenue}"}

@women_stores = Store.where(womens_apparel: true).where('annual_revenue < ? ', 1000000)
@women_stores.each { |store| puts "Store Name: #{store.name}, Store Revenue: #{store.annual_revenue}" }