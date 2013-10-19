class QuizzesController < ApplicationController

  def new
    params[:questions] = params[:questions] || {}
    ids = params[:questions].keys
    @question = Question.order("RANDOM()").where("id NOT IN (#{ids.join(',')})").limit(1).first 

    if params[:questions].size == 3
      redirect_to action: :show, id: "result", questions: params[:questions]  #it needs id!
    end   
  end

  def show
    dogs, cats = params[:questions]
      .select { |k,v| v == "true"}
      .map { |k,v| Question.find(k).category }
      .partition { |e| e == "dog" }
 
    @result = if dogs.count > cats.count
      "dog lover"
    elsif dogs.count == cats.count
      "plant lover"
    else
      "cat lover"
    end

  end


end