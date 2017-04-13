class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    if Movie.find(params["id"]).in?(current_user.summarized_movies)

      @movie = Movie.find_by(id: params[:id])
    else
      redirect_to movies_path
    end

  end
end
