class ShortenedUrlsController < ApplicationController
  # GET /shortened_urls
  def index
    shortened_urls = current_token.try(:shortened_urls) || ShortenedUrl.none
    shortened_urls = ShortenedUrlDecorator.decorate_collection(shortened_urls)

    render json: shortened_urls, status: :ok
  end

  # GET /shortened_urls/:code
  def show
    shortened_url = ShortenedUrl.where(code: params[:code]).first

    if shortened_url.present?
      redirect_to shortened_url.url
    else
      render plain: '404 Not Found', status: :not_found
    end
  end

  # POST /shortened_urls
  def create
    shortened_url = ShortenedUrl.new(
      url: params[:url],
      token: current_token,
      code: Shortener::ShortenedUrl.unique_key_candidate
    )

    if shortened_url.save
      render json: shortened_url.decorate, status: :created
    else
      render json: { errors: shortened_url.errors }, status: :unprocessable_entity
    end
  end

end
