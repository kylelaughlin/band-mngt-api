class Api::V1::SongsController < ApplicationController
  def index
    @active_songs = Song.active(current_user)
    @inactive_songs = Song.inactive(current_user)
    render json: { songs: @active_songs }
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      render json: { songs: @song }
    else
      render json: { errors: @song.errors.full_messages }
    end
  end

  def show
    @song = Song.find(params[:id])
    render json: { song: @song }
  end

  def update
    @song = Song.find(params[:id])
    if @song.update_attributes(song_params)
      render json: { song: @song }
    else
      render :json => { errors: @song.errors.full_messages }
    end
  end

  private

  def song_params
    params.require(:song).permit(:title, :artist, :band_id)
  end

end
