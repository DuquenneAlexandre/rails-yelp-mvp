# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
  post = Restaurant.new({
                    name: Faker::Company.name,
                    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
                    phone_number: Faker::Number.number(10),
                    category: Faker::Address.country
                  })
  post.save
end