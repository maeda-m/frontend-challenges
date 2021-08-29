class TokensController < ApplicationController
  def device
    @token = Token.find_or_create_by_secure_token(request.headers['x-current-token'])

    render json: { token: @token.generate_secure_token }, status: :ok
  end
end
