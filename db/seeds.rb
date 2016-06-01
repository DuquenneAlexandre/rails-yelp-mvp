10.times do
  post = Restaurant.new({
                    name: Faker::Company.name,
                    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
                    phone_number: Faker::Number.number(10),
                    category: Faker::Address.country
                  })
  post.save
end
  10.times do
  post = Review.new({
                    content: "#{Faker::Address.street_address}, #{Faker::Address.city}",
                    rating: Faker::Number.between(1, 5),
                    })
  post.save
end