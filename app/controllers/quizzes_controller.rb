class QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
  end

  def new
    @quiz = Quiz.new
  end

  def create
    Quiz.create(quiz_params)
    redirect_to root_path
  end

  private

  def quiz_params
    params.require(:quiz).permit(:name, :number, :email)
  end
end