class Api::V1::ShowsController < ApplicationController
  def index
    @shows = Show.all
    render json: @shows
  end

  def create
    @show = Show.new(get_params)
    @show.save
  end

  def show
    @show = Show.find(params[:id])
    render json: @show
  end

  private
  def get_params
    params_require(:show).permit(:name, :location)
  end

end
