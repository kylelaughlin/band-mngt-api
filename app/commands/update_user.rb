class UpdateUser
  prepend SimpleCommand

  def initialize(current_user, user_params, band_token=nil)
    @current_user   =   current_user
    @user_params    =   user_params
    @band_token     =   band_token
  end

  def call
    if @band_token
      band = Band.find_by_token(@band_token)
      @current_user.bands << band
    else
      @current_user.update(user_params)
    end
    @current_user
  end

end
