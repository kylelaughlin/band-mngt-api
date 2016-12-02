class CreateBand
  prepend SimpleCommand

  def initialize(current_user, band_params)
    @current_user = current_user
    @band_params  = band_params
  end

  def call
    band = Band.new(@band_params)
    band.token = generate_token
    if band.save
      @current_user.bands << band
    else
      return band
    end
    band
  end

  private

  def generate_token
    token = loop do
      random_token = SecureRandom.urlsafe_base64(nil, false)
      break random_token unless Band.exists?(token: random_token)
    end
  end

end
