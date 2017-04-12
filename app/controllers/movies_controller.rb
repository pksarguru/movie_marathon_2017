class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    if Movie.find(params["id"]).in?(current_user.summarized_movies)
      print "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    else
      print "NOPENOPENOPENOPENOPENOPENOPE"
    end
  end
end
