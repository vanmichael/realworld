class ContestantsController < ApplicationController

  def index
    @show = Show.find(params[:show_id])
    @contestants = @show.contestants
  end

  def new
    @show = Show.find(params[:show_id])
    @contestant = @show.contestants.build
  end

  def create
    @show = Show.find(params[:show_id])
    @contestant = @show.contestants.build(contestant_params)
    if @contestant.save
      redirect_to show_contestants_path, notice: "Saved Contestant Yay"
    else
      render new
    end


  end

  private

  def contestant_params
    params.require(:contestant).permit(:name,:show_id)
  end
end
