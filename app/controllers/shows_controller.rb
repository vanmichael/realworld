class ShowsController < ApplicationController

  def index
    @favorite_groupy = Groupy.all.sample.name
    @shows = Show.all
    session[:groupy] = @favorite_groupy
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)
    if @show.save
      redirect_to shows_path, notice: "Show has been created! Yay!"
    else
      render new
    end
  end

  def show
    @show = Show.find(params[:id])
  end

  private

  def show_params
    params.require(:show).permit(:title, :season)
  end
end
