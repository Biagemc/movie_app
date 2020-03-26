class Api::MovieGenresController < ApplicationController
  def create
    @movie = Movie.new(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id],
    )
    if movie.save
      render "show.json.jb"
    else
      render json: { errors: @movie.errors.full_messages }, status: :bad_request
    end
  end
end
