class Frontend::EntrypointsController < ActionController::Base
  before_action do
    Token.where('created_at < ?', Time.zone.yesterday).destroy_all
  end

  def index
    render layout: false
  end
end
