class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(strong_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant

    if @review.save
      flash[:success] = "Object successfully created"
      redirect_to restaurant_path(@restaurant)
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  private

  def strong_params
    params.require(:review).permit(:rating, :content)
  end
  
  
end
