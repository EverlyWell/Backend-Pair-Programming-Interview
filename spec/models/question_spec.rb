require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { Question.new }

  describe "associations" do
    it { expect(question).to have_many(:product_questions).dependent(:destroy) }
    it { expect(question).to have_many(:products).through(:product_questions) }
  end

  describe "validations" do
    it { should validate_length_of(:answer).is_at_least(5) }
    it { should validate_length_of(:label).is_at_least(5) }
  end
end
