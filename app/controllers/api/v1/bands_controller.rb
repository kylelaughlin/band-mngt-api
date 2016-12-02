class Api::V1::BandsController < ApplicationController

  def create
    command = CreateBand.call(current_user, band_params)
    if command.success?
      render json: command.result
    else
      render json: { error: command.errors }
    end
  end

  def update
    @band = Band.find(:id)
    if @band.update(band_params)
      render json: @band
    else
      render json: { error: @band.errors.full_messages }
    end
  end

  private

  def band_params
    params.require(:band).permit(:name)
  end
end
