class QuestionsController < ApplicationController

  def ask
  end

  # check params and create @answer variable based on params
  def answer
    @answer = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!
      "]
    @response = ''

    if params[:question] == "I am going to work"
      @response = @answer[0]
    elsif params[:question].include?("?")
      @response = @answer[1]
    else
      @response = @answer[2]
    end
  end
end
