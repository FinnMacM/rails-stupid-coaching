class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    # doest the question have a question mark?
    # return Silly question, get dressed and go to work!.
    if @question.last == "?"
      @answer = 'Silly question, get dressed and go to work!.'
    elsif @question == 'I am going to work'
      @answer = 'Great you lazy bastard'
    else
      @answer = "I don't care, get dressed and go to work!"
    end

    # @answers = ['Great!', 'Silly question, get dressed and go to work!.', "I don't care, get dressed and go to work!"]

  end
end
