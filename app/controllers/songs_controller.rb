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

  def create
    song = Song.new(
      title: params[:title],
      album: params[:album],
      artist: params[:artist],
      year: params[:year],
    )
    if song.title.downcase == "moo"
      song.artist = "Cow"
      song.album = "The Farm"
      song.year = "1992"
    end
    song.save
    render json: { new_song: song }
  end
end
