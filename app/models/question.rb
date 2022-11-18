class Question < ApplicationRecord
  validates_length_of :answer, minimum: 5
  validates_length_of :label, minimum: 5
end
