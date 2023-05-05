# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Group.destroy_all

# Users
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

# Groups
group_1 = Group.create(
  {
    name: "Utility Bills",
    icon: "fa-solid fa-plug",
    user_id: 1
  }
)

group_2 = Group.create( {
  name: "Rent & Mortgage",
  icon: "fa-solid fa-house-building",
  user_id: 1
})

group_3 = Group.create({
  name: "Groceries",
  icon: "fa-solid fa-cart-shopping",
  user_id: 2
})

group_4 = Group.create({
  name: "Entertainment",
  icon: "fa-solid fa-tv-music",
  user_id: 2
})

 # Many to many associations
expense_1 = group_1.expenses.create({
  name: "Electricity bill for Jan 2023",
  amount: 30.00,
  user_id: 1
 })

expense_2 = group_2.expenses.create({
  name: "Paid rent for April 2023",
  amount: 30.00,
  user_id: 1
 })

expense_3 = group_3.expenses.create({
  name: "Bought a bag of rice (5 kg) for Feb 2023",
  amount: 30.00,
  user_id: 2
 })

expense_4 = group_4.expenses.create({
  name: "Renewal of Netflix subscription for May 2023",
  amount: 30.00,
  user_id: 2
 })

if expense_1.save
  puts "Expense #{expense_1.name} created and associated with group #{group_1.name}."
else
  puts "Error creating expense: #{expense_1.errors.full_messages.join(", ")}"
end

if expense_2.save
  puts "Expense #{expense_2.name} created and associated with group #{group_2.name}."
else
  puts "Error creating expense: #{expense_2.errors.full_messages.join(", ")}"
end

if expense_3.save
  puts "Expense #{expense_3.name} created and associated with group #{group_3.name}."
else
  puts "Error creating expense: #{expense_3.errors.full_messages.join(", ")}"
end

if expense_4.save
  puts "Expense #{expense_4.name} created and associated with group #{group_4.name}."
else
  puts "Error creating expense: #{expense_4.errors.full_messages.join(", ")}"
end