class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(question)
    if question == "I am going to work"
      "Great!"
    elsif question.end_with?("?")
      "Silly question, get dressed and go to work!."
    else
      "I don't care, get dressed and go to work!"
    end
  end
end

# def contact
#   @members = ["thanh", "dimitri", "germain", "damien", "julien"]

#   if params[:member]
#     @members = @members.select { |member| member.start_with?(params[:member]) }
#   end
# end
# end
