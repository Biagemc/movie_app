class Api::ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render "index.json.jb"
  end

  def show
    the_id = params[:id]
    @actor = Actor.find_by(id: the_id)
    render "show.json.jb"
  end
end
