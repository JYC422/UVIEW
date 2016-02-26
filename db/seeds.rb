# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Review.destroy_all
User.destroy_all
Restaurant.destroy_all

u1 = User.create(
  user_name: "Ray Chen",
  num_reviews: 26,
  about_me: "I love to eat",
  is_owner: false,
  is_top_rev: false,
  email: "raychenfromcerritos@gmail.com",
  password:              "12345",
  password_confirmation: "12345"
)

User.create(
  user_name: "Pare Keet",
  num_reviews: 100,
  about_me: "I am a top level food critic",
  is_owner: false,
  is_top_rev: true,
  email: "parekeet@gmail.com",
  password:              "12345",
  password_confirmation: "12345"
)

User.create(
  user_name: "Test Test",
  num_reviews: 1,
  about_me: "I am a test",
  is_owner: false,
  is_top_rev: false,
  email: "test@gmail.com",
  password:              "12345",
  password_confirmation: "12345"
)

r1 = Restaurant.create(
  rstrnt_name: "Test Restaurant",
  tags: "Test Tag",
  address: "100 Test Street",
  phone_num: "444-444-4444",
  hours: "Never Open",
  rstrnt_site: "www.testaurant1.com"
)

Restaurant.create(
  rstrnt_name: "Test2 Restaurant",
  tags: "Test Tag",
  address: "102 Test Street",
  phone_num: "555-555-5555",
  hours: "Always Open",
  rstrnt_site: "www.testaurant2.com"
)

Restaurant.create(
  rstrnt_name: "Test3 Restaurant",
  tags: "Test Tag",
  address: "103 Test Street",
  phone_num: "666-666-6666",
  hours: "Sometimes Open",
  rstrnt_site: "www.testaurant3.com"
)

Review.create(
  food_rating: 4,
  service_rating: 2,
  ambiance_rating: 3,
  review_content: "This test restaurant sucked a little",
  user: u1,
  restaurant: r1
)

Review.create(
  food_rating: 5,
  service_rating: 5,
  ambiance_rating: 5,
  review_content: "I'm satisfied by literally anything",
  user: u1,
  restaurant: r1
)

Review.create(
  food_rating: 1,
  service_rating: 1,
  ambiance_rating: 1,
  review_content: "LDNKASNDLKAJNDAJDKLAJNSDKLANSD",
  user: u1,
  restaurant: r1
)
