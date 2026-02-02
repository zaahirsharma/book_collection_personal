# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# db/seeds.rb
# Clear existing data to avoid duplicates
Book.destroy_all

# Create 5 seed entries
Book.create!(title: "The Great Gatsby", author: "F. Scott Fitzgerald", price: 10.99, published_date: "1925-04-10")
Book.create!(title: "1984", author: "George Orwell", price: 8.99, published_date: "1949-06-08")
Book.create!(title: "The Hobbit", author: "J.R.R. Tolkien", price: 14.99, published_date: "1937-09-21")
Book.create!(title: "Pride and Prejudice", author: "Jane Austen", price: 9.99, published_date: "1813-01-28")
Book.create!(title: "To Kill a Mockingbird", author: "Harper Lee", price: 12.99, published_date: "1960-07-11")

puts "Seeding completed for #{Rails.env} environment."