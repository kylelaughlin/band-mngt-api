class Api::V1::UsersController < ApplicationController

  def show
    @user = current_user
    render json: @user
  end

  def update
    command = UpdateUser.call(current_user, user_params, band_token)
    if command.success?
      redner json: command.result
    else
      render json: { errors: command.errors }
    end
  end


  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :band_id, :password, :password_confirmation)
  end
end
