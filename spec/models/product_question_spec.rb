require 'rails_helper'

RSpec.describe ProductQuestion, type: :model do
  let(:product_question) { ProductQuestion.new }

  describe "associations" do
    it { expect(product_question).to belong_to(:product) }
    it { expect(product_question).to belong_to(:question) }
  end
end
