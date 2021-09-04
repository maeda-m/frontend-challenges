class ShortenedUrlDecorator < Draper::Decorator
  delegate :url, :code

  def as_json(options = nil)
    short_link = h.shortened_url_url(code: self.code)

    {
      long_link: self.url,
      short_link: short_link,
    }
  end
end
