class Api::V1::SongsController < ApplicationController
  before_action :set_song, only: [:show, :update, :destroy]
  #before_action :authenticate_user!

  def index
    @songs = Song.all
    @active_songs = Song.active(current_user)
    @inactive_songs = Song.inactive(current_user)
    render json: { active_songs: @active_songs, inactive_songs: @inactive_songs }
  end

  def create
    @song = Song.new(song_params)
    authorize @song
    if @song.save
      render json: { songs: @song }
    else
      render json: { errors: @song.errors.full_messages }
    end
  end

  def show
    authorize @song
    render json: @song
  end

  def update
    authorize @song
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

  def set_song
    @song = Song.find(params[:id])
  end

end
