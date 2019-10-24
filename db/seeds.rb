# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'table_print'

User.destroy_all

user_array = []

10.times do |index|

user_array << User.create(id:index,email: Faker::Internet.email, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)#, description: faker::Text.description)#, age: Faker::Age.age)
end
puts user_array
