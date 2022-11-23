class Product < ApplicationRecord
  has_many :product_questions, dependent: :destroy
  has_many :questions, through: :product_questions

  validates_length_of :name, minimum: 5
end
