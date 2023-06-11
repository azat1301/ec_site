class Product < ApplicationRecord
  has_many_attached :photos # ActiveStorage
  has_many :cart_items, dependent: :destroy   # ActiveStorage
end
