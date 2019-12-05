class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @ask = params[:question]
    if @ask.include? "?"
      return @answer = "Silly question, get dressed and go to work!"
    elsif @ask === 'I am going to work'
      return @answer = 'Great!'
    else
      return @answer = "I don't care, get dressed and go to work!"
    end
  end
end
