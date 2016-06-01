10.times do
  post = Restaurant.new({
                    name: Faker::Company.name,
                    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
                    phone_number: Faker::Number.number(10),
                    category: Faker::Address.country
                  })
  post.save
end