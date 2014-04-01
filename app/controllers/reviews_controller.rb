class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to @review
  end

  def show
     @review = Review.find(params[:id])
  end  

  def index
     @reviews = Review.all
  end  

  private

  def review_params
    params.require(:review).permit(:username, :name_of_film, :description, :comment, :ratings)
  end



end  