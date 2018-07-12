class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(get_params)
    @user.save
  end

  def show
    # attributes :id, :name, :age, :gender, :email, :password, :img_src, :teams
    @user = User.find(params[:id])
    render json: @user
    # render json: {
    #   name:@user.name
    #   teams:@user.teams
    # }
  end

  # def teams
  #   @team = Team.find(params[:id])
  # end

  private
  def get_params
    params_require(:user).permit(:name, :age, :gender, :email, :password, :img_src)
  end

end
