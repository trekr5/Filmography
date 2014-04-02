class MoviesController < ApplicationController

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.valid?
      @movie.save
      redirect_to @movie
    else
      render :new
    end
  end

  def show
     @movie = Movie.find(params[:id])
  end  

  def index
     @movies = Movie.all
  end  

  private

  def movie_params
    params.require(:review).permit(:title, :ratings, :description)
  end



end  