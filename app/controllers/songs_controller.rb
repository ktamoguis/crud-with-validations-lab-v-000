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
    #binding.pry
    @song = Song.new(song_params)
    #binding.pry
    if @song.save
      @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update

  end


  private

    def song_params
      params.require(:song).permit(:title, :artist_name, :release_year, :released, :genre)
    end



end
