class QuestionsController < ApplicationController
  def ask

  def answer
    @question = params[:question]
    @answer = define_answer if @question.present?
  end
end

def define_answer
  if @question.match?(/going to work/)
    'Great!'
  elsif @question.match?(/[?]\z/)
    'Silly question, get dressed and go to work!'
  else
    "I don't care, get dressed and go to work!"
  end
end
