class Api::MoviesController < ApplicationController
  require "http"

  def index
    @movies = Movie.all
    render "index.json.jb"
  end

  def show
    the_id = params[:id]
    @movie = Movie.find_by(id: the_id)
    render "show.json.jb"
  end
end
