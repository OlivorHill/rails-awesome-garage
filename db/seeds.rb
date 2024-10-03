# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Clearing Database"
Review.destroy_all
Favourite.destroy_all
Car.destroy_all
Owner.destroy_all
puts "Datacase cleared!"

puts "Creating Owners...."
olivor = Owner.create!(nickname: "Olivor")
paul = Owner.create!(nickname: "Paul")
darcy = Owner.create!(nickname: "Darcy")
marco = Owner.create!(nickname: "Marco")
puts "Created #{Owner.count} owners!"

puts "Creating Cars...."
Car.create!(owner: olivor, brand: "Audi", model: "A3", fuel: "Diesel", year: 2013)
Car.create!(owner: paul, brand: "BMW", model: "X3", fuel: "Petrol", year: 2023)
Car.create!(owner: darcy, brand: "Mini", model: "Cooper", fuel: "Diesel", year: 2015)
Car.create!(owner: marco, brand: "Mercedes", model: "SLK", fuel: "Petrol", year: 2008)
puts "Created #{Car.count} cars!"
