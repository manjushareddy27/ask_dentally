class WelcomeController < ApplicationController
  def index
     @questions = Question.all
   end

  private

  def question_params
    params.require(:question).permit(:text, :title, :user_id)
  end
end
