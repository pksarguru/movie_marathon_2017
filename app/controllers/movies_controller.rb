class MoviesController < ApplicationController
  def index
    if user_signed_in?
      @users = User.all
      @movies = Movie.all
    else
      redirect_to new_user_registration_path
    end
  end

  def show
    @movie = Movie.find_by(id: params[:id])

    @authors = @movie.author_ids

  end
end
