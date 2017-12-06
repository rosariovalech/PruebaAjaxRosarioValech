# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'rosario_varm@hotmail.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

20.times do
	Company.create([{
		title: Faker::Company.name,
		content: Faker::Company.catch_phrase
		}])
end

30.times do
	User.create([{
		email: Faker::Internet.email,
		encrypted_password: Faker::Internet.password
		}])
end

250.times do
	Claim.create([{
		title: Faker::Company.name,
		date: Faker::Date.between(2.days.ago, Date.today)
		}])
end