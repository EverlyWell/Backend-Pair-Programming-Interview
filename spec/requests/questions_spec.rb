require 'rails_helper'

RSpec.describe "/questions", type: :request do
  let(:valid_attributes) { { label: "What's the meaning of life?", answer: 'Some say 42' } }
  let(:invalid_attributes) { { label: '', answer: 'hi' } }
  let(:valid_headers) { {} }

  describe "GET /index" do
    it "renders a successful response" do
      Question.create! valid_attributes
      get questions_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Question" do
        expect {
          post questions_url, params: { question: valid_attributes }, headers: valid_headers, as: :json
        }.to change(Question, :count).by(1)
      end

      it "renders a JSON response" do
        post questions_url, params: { question: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Question" do
        expect {
          post questions_url, params: { question: invalid_attributes }, as: :json
        }.to change(Question, :count).by(0)
      end

      it "renders a JSON response with errors for the new question" do
        post questions_url, params: { question: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end
  end
end
