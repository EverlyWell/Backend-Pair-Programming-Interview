require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:product) { Product.new }

  describe "associations" do
    it { expect(product).to have_many(:product_questions).dependent(:destroy) }
    it { expect(product).to have_many(:questions).through(:product_questions) }
  end

  describe "validations" do
    it { should validate_length_of(:name).is_at_least(5) }
  end
end
