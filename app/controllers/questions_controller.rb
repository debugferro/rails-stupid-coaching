class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question.present?
      if @question.match? (/going to work/)
        @answer = 'Great!'
      elsif @question.match? (/[?]\z/)
        @answer = 'Silly question, get dressed and go to work!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
