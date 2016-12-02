class CreateBand
  prepend SimpleCommand

  def initialize(current_user, band_params)
    @current_user = current_user
    @band_params  = band_params
  end

  def call
    band = Band.new(@band_params)
    if band.save
      @current_user.bands << band
    else
      return band
    end
    band
  end

end
