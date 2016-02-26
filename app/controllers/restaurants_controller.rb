class RestaurantsController < ApplicationController

  before_action :authorize, only: [:edit, :update, :destroy]

  def index
    if params[:restaurant_id]
      restaurant = Restaurant.find(params[:restaurant_id])
      redirect_to restaurant_path(restaurant)
    end
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      session[:restaurant_id] = @restaurant.id
      flash[:notice] = "You have successfully signed up!"
      redirect_to current_rest
    else
      render 'new'
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update_attributes(params.require(:restaurant).permit(
    :id,
    :rstrnt_name,
    :phone_num,
    :address,
    :hours,
    :rstrnt_site
    ))
      redirect_to restaurant_path
    else
      render :edit
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.reviews.destroy_all
    @restaurant.destroy
    redirect_to root_path
  end

private

  def restaurant_params
      params.require(:restaurant).permit(:rstrnt_name, :phone_num, :address, :hours, :rstrnt_site)
  end
end
