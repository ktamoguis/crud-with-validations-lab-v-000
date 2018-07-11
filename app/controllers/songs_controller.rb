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
    binding.pry
    @song = Song.new(song_params)
    if @song.save
      @song.save
      redirect song_path(@song)
    else
      render :new
    end
  end


  private

    def song_params
      params.permit(:title, :artist_name, :release_year.to_i, :released, :genre)
    end



end
