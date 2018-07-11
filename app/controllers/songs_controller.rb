class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)

    redirect_to song_path(@song)
  end


  private

    def song_params
      params.permit(:title, :artist_name, :release_year, :released, :genre)
    end



end
