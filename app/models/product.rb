class Product < ApplicationRecord
  validates_length_of :name, minimum: 5
end
