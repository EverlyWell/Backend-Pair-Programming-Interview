require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    it { should validate_length_of(:name).is_at_least(5) }
  end
end
