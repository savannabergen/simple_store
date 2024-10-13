require "csv"

csv_file = Rails.root.join('db/products.csv')
   csv_data = File.read(csv_file)

   products = CSV.parse(csv_data, headers: true)

   # If CSV was created by Excel in Windows you may also need to set an encoding type:
   # products = CSV.parse(csv_data, headers: true, encoding: 'iso-8859-1')

   products.each do |product|
    category_name = product['category']
    category = Category.find_or_create_by(name: category_name)

    Product.create(
      title: product['name'],
      price: product['price'],
      description: product['description'],
      stock_quantity: product['stock quantity'],
      category: category
    )
  end
