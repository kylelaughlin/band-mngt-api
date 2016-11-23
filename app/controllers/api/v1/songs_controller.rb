class Api::V1::SongsController < ApplicationController
  def index
    @active_songs = Song.active(current_user)
    @inactive_songs = Song.inactive(current_user)
    render json: @active_songs
  end
end
