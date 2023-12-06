class Product < ApplicationRecord
  belongs_to :brand
  has_many :product_stacks, dependent: :destroy
  has_many :stacks, through: :product_stacks
end
