class Api::V1::UsersController < ApplicationController
  def show
    @user = current_user
    render json: @user
  end

  def update
    @user = current_user
    if @user.update_attributes(user_params)
      redner json: @user
    else
      render json: { errors: @user.errors.full_messages }
    end
  end


  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :band_id, :password, :password_confirmation)
  end
end
