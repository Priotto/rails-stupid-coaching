class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question_asked]

    line = @question
    last_index = line.length - 1
    last_char = line[last_index]

    if last_char == "?"
      @answer = "Silly question, get dressed and go to work!"
    elsif line == "I am going to work right now!"
      @answer = "Great!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
