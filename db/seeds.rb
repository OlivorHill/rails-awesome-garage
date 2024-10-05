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
Car.create!(owner: olivor, brand: "Audi", model: "A3", fuel: "Diesel", year: 2013, image_url: "https://www.auto-data.net/images/f10/file3616437.jpg")
Car.create!(owner: paul, brand: "BMW", model: "X3", fuel: "Petrol", year: 2023, image_url: "https://images.carexpert.com.au/resize/1600/-/app/uploads/2022/05/220503_BMW-X3-M40i_Still-27.jpg")
Car.create!(owner: darcy, brand: "Mini", model: "Cooper", fuel: "Diesel", year: 2015, image_url: "https://images.prismic.io/carwow/43d669ab-cb53-494a-bf5c-d3d271772ad4_P90419418_highRes_the-new-mini-3-door-.jpg?auto=format&cs=tinysrgb&fit=crop&q=60&w=750")
Car.create!(owner: marco, brand: "Mercedes", model: "SLK", fuel: "Petrol", year: 2008, image_url: "https://media.autoexpress.co.uk/image/private/s--LN5LlLDl--/f_auto,t_content-image-full-desktop@1/v1562251161/autoexpress/images/car_photo_245532.jpg")
puts "Created #{Car.count} cars!"
