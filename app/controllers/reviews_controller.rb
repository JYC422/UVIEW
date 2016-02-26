class ReviewsController < ApplicationController

    def index
      @reviews = Review.all
    end

    def show
      @review = Review.find(params[:id])
    end

    def new
      @restaurant = Restaurant.find(params[:restaurant_id])
      @review = Review.new
    end

    def create
      @review = Review.new(review_params)
      @review.restaurant_id = params[:restaurant_id]
      @review.user = current_user
      if @review.save
        session[:review_id] = @review.id
        flash[:notice] = "You have successfully signed up!"
        redirect_to restaurant_path(@review.restaurant)
      else
        render 'new'
      end
    end

    def edit
      @review = Review.find(params[:id])
    end

    def update
      @review = Review.find(params[:id])
      if @review.update_attributes(params.require(:review).permit(
      :id,
      :food_rating,
      :service_rating,
      :ambiance_rating,
      :review_content,
      :user_id.user_name
      ))
        redirect_to restaurant_path(@review.restaurant)
      else
        render :edit
      end
    end

    def destroy
      @review = Review.find(params[:id])
      @review.destroy
      redirect_to restaurant_path(@review.restaurant)
    end

  private

    def review_params
        params.require(:review).permit(:food_rating, :service_rating, :ambiance_rating, :review_content)
    end

end
