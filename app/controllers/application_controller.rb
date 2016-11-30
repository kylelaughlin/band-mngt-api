class ApplicationController < ActionController::API
  include Pundit
  include ActionController::Serialization

  before_action :destroy_session
  before_action :authenticate_request
  attr_reader :current_user

rescue_from Pundit::NotAuthorizedError, with: :member_not_allowed

  private

  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result
    render json: {error: 'Not authorized'}, status: 401 unless @current_user
  end

  def destroy_session
    request.session_options[:skip] = true
  end

  def member_not_allowed
    render json: { error: 'Not authorized' }, status: 401
  end

end
