class ApplicationController < ActionController::API
  def current_token
    @token ||= Token.find_by_secure_token(request.headers['x-current-token'])
  end
end
