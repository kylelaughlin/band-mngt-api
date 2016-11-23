class Api::V1::UsersController < ApplicationController
  def show
    user = current_user
    render(json: Api::V1::UserSerializer.new(user).to_json)
  end
end
