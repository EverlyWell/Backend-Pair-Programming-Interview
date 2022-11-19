require 'rails_helper'

RSpec.describe Question, type: :model do
  describe "validations" do
    it { should validate_length_of(:answer).is_at_least(5) }
    it { should validate_length_of(:label).is_at_least(5) }
  end
end
