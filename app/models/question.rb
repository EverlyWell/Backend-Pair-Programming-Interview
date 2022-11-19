class Question < ApplicationRecord
  has_many :product_questions, dependent: :destroy
  has_many :products, through: :product_questions

  validates_length_of :label, minimum: 5
  validates_length_of :answer, minimum: 5
end
