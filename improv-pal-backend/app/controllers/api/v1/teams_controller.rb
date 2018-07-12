class Api::V1::TeamsController < ApplicationController
  def index
    @teams = Team.all
    render json: @teams
  end

  def create
    @team = Team.new(get_params)
    @team.save
  end

  def show
    @team = Team.find(params[:id])
    render json: @team
  end

  private
  def get_params
    params_require(:team).permit(:name)
  end

end
