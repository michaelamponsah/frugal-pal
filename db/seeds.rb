# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Group.destroy_all

User.create([
  {
    name: "Stephen Greens",
    email: "stephengreen@gmail.com",
    password: "test123"
  },
  {
    name: "Wes Gibbins",
    email: "wesgibbins@gmail.com",
    password: "test123"
  }
])

Group.create([
  {
    name: "Utility Bills",
    icon: "fa-solid fa-plug",
    user_id: 1
  },
  {
    name: "Rent",
    icon: "fa-solid fa-house-building",
    user_id: 1
  },
  {
    name: "Groceries",
    icon: "fa-solid fa-cart-shopping",
    user_id: 1
  },
])
