class Token < ApplicationRecord
  has_many :shortened_urls

  class << self
    def hmac_secret
      ENV['API_TOKEN_SECRET']
    end

    def find_by_secure_token(secure_token)
      token = self.decoded_token(secure_token)
      return if token.blank?

      return self.where(value: token).first
    end

    def find_or_create_by_secure_token(secure_token)
      record = self.find_by_secure_token(secure_token)
      return record if record.present?

      token = SecureRandom.hex(16)
      return self.create(value: token)
    end

    def decoded_token(secure_token)
      return nil if secure_token.blank?

      payload = JWT.decode(secure_token,
        self.hmac_secret, true, { algorithm: 'HS256' }).first
      return payload['token']
    rescue => e
      return nil
    end
  end

  def generate_secure_token
    JWT.encode({
      token: self.value
    }, self.class.hmac_secret, 'HS256')
  end
end
