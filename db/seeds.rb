# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do
  user = User.create!(email: Faker::Internet.email, username: Faker::Internet.username(specifier: 10), password: 'qwer4321', password_confirmation: "qwer4321")
  puts "create user id: #{user.id}, email: #{user.email}. username: #{user.username}"
end
30.times do |i|
  puts "start create #{i} product"
  product = Product.create(name: Faker::Commerce.product_name, content: Faker::Lorem.paragraph, quantity: Faker::Number.between(from: 50, to: 500),
                        price: Faker::Number.decimal(l_digits: 5, r_digits: 2), available: Faker::Boolean.boolean(true_ratio: 0.4),
                        discount: Faker::Number.decimal(l_digits: 2, r_digits: 1), image: "https://loremflickr.com/300/300",
                        released_at: Faker::Date.between(from: '2000-02-02', to: '2024-09-25'), created_at: Time.current)

  puts "#{product.errors.full_messages}"
  (1..20).to_a.sample.times do
    Review.create(content: Faker::Lorem.sentence, user: User.all.sample, product: product)
  end
  puts "finish #{i} product"
end