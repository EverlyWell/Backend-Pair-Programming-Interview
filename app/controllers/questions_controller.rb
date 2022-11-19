class QuestionsController < ApplicationController
  # GET /questions
  def index
    @questions = Question.all

    render json: @questions
  end

  # POST /questions
  def create
    @question = Question.new(question_params)

    if @question.save
      render json: {}, status: :created
    else
      render json: @question.errors, status: :unprocessable_entity
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def question_params
    params.require(:question).permit(:answer, :label)
  end
end
