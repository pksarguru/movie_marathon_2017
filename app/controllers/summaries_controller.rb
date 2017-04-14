class SummariesController < ApplicationController
  def new
    @movie = Movie.find_by(id: params[:movie_id])
  end

  def create
    Summary.new(params[:summary])
  end

end
