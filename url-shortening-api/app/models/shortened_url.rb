class ShortenedUrl < ApplicationRecord
  belongs_to :token

  validates :url,
    presence: { message: 'Please add a link' },
    url: { allow_blank: true }
end
