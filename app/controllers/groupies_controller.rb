class GroupiesController < ApplicationController

  def index

    @contestant = Contestant.find(params[:contestant_id])
    @groupies = @contestant.groupies
  end

  def new
    @contestant = Contestant.find(params[:contestant_id])
    @show = @contestant.show
    @groupy = @contestant.groupies.build
  end

  def create
    @contestant = Contestant.find(params[:contestant_id])
    @groupy = @contestant.groupies.build(groupy_params)
    if @groupy.save
      redirect_to show_contestant_groupies_path, notice: 'Congrats, the groupy was made!'
    else
      render new
    end
  end

  private
  def groupy_params
    params.require(:groupy).permit(:name)
  end
end
