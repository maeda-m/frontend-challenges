class Frontend::EntrypointsController < ActionController::Base
  def index
    render layout: false
  end
end
