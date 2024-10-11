class Product < ApplicationRecord
  validates :title, presence: { message: 'cannot be blank' }
  validates :price, presence: { message: 'cannot be blank' }
  validates :stock_quantity, presence: { message: 'cannot be blank' }
end
