# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."

puts "Cleaning users..."
User.destroy_all if Rails.env.development?

puts "Creating users..."
User.create!(
  email: "odette@mail.com",
  password: "123456",
  first_name: "Odette",
  last_name: "Quiroz"
)

puts "Seeding finished!"
