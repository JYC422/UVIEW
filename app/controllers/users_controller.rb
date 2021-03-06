class UsersController < ApplicationController

  before_action :authorize, only: [:edit, :update]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You have successfully signed up!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params.require(:user).permit(
    :id,
    :user_name,
    :num_reviews,
    :about_me
    ))
      redirect_to current_user
    else
      render :edit
    end
  end

private

  def user_params
      params.require(:user).permit(:user_name, :email, :password, :password_confirmation)
  end

end
