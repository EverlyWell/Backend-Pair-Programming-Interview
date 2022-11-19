require 'rails_helper'

RSpec.describe "/questions", type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Question. As you add validations to Question, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # QuestionsController, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) {
    {}
  }

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
          post questions_url,
               params: { question: valid_attributes }, headers: valid_headers, as: :json
        }.to change(Question, :count).by(1)
      end

      it "renders a JSON response with the new question" do
        post questions_url,
             params: { question: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Question" do
        expect {
          post questions_url,
               params: { question: invalid_attributes }, as: :json
        }.to change(Question, :count).by(0)
      end

      it "renders a JSON response with errors for the new question" do
        post questions_url,
             params: { question: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end
  end
end
