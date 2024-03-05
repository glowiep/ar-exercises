require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# One-to-many association
@store2 = Store.find_by(id: 2)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Samantha", last_name: "Bailey", hourly_rate: 60)
@store1.employees.create(first_name: "Cathy", last_name: "Simons", hourly_rate: 60)
@store1.employees.create(first_name: "Tyra", last_name: "West", hourly_rate: 60)
@store1.employees.create(first_name: "Mike", last_name: "Lam", hourly_rate: 60)

@store2.employees.create(first_name: "Earl", last_name: "Holland", hourly_rate: 60)
@store2.employees.create(first_name: "Indigo", last_name: "Osta", hourly_rate: 60)
@store2.employees.create(first_name: "Tom", last_name: "Li", hourly_rate: 60)
@store2.employees.create(first_name: "Summer", last_name: "North", hourly_rate: 60)
@store2.employees.create(first_name: "Earl", last_name: "Winston", hourly_rate: 60)