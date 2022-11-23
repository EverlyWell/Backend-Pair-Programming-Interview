class ProductQuestion < ApplicationRecord
  belongs_to :product
  belongs_to :question
end
