# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
	user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)	
end

10.times do
	category = Category.create!(name: Faker::Music.genre)
end

10.times do
	article = Article.create!(user_id: rand(1..10), category_id: rand(1..5), title: Faker::Music.album, content: Faker::Lebowski.quote)
end

10.times do
	comment = Comment.create!(user_id: rand(1..10), article_id: rand(1..10), content: Faker::HowIMetYourMother.quote)
end

10.times do
  like = Like.create!(user_id: rand(1..10), article_id: rand(1..10))
end