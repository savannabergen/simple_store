require 'faker'

676.times do
  Product.create(
    title: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    stock_quantity: Faker::Number.between(from: 5, to: 500)
  )
end
