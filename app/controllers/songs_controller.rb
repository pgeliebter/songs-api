class SongsController < ApplicationController
  def index
    songs = Song.all
    render json: songs.as_json
  end

  def show
    id = params[:id]
    songs = Song.find(id)
    render json: songs.as_json
  end
end
