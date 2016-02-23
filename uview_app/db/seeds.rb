# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all

User.create(
  user_name: "Ray Chen",
  num_reviews: 26,
  about_me: "I love to eat",
  is_owner: false,
  is_top_rev: false,
  email: "raychenfromcerritos@gmail.com",
  password: "12345",
  password_confirmation: "12345"
  )

User.create(
  user_name: "Pare",
  num_reviews: 100,
  about_me: "I am a top level food critic",
  is_owner: false,
  is_top_rev: true,
  email: "parekeet@gmail.com",
  password: "12345",
  password_confirmation: "12345"
  )
