class JwtToken
  SECRET_KEY = Rails.application.credentials.jwt_secret

  def self.encode(payload, exp = 1.day.from_now)
    payload[:exp] = exp.to_i

    JWT.encode(payload, SECRET_KEY, "HS256")
  end

  def self.decode(token)
    decoded = JWT.decode(token, SECRET_KEY). first

    HashWithIndifferentAccess.new(decoded)
  end
end
