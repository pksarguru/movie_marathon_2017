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
    @summaries = @movie.summaries
    if @movie.has_summary_by_user?(current_user)

    else
      redirect_to new_movie_summary_path(@movie)
    end

  end
end


# class MoviesController < ApplicationController
  # def index
  #   if user_signed_in?
  #     @users = User.all
  #     @movies = Movie.all
  #   else
  #     redirect_to new_user_registration_path
  #   end
  # end

  def show
    @movie = Movie.find_by(id: params[:id])

    @authors = @movie.author_ids

  end
# end
