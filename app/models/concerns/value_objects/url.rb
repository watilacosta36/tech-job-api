module ValueObjects
  class Url
    attr_reader :value

    def initialize(value)
      uri = URI.parse(value)

      unless uri.is_a?(URI::HTTP) || uri.is_a?(URI::HTTPS)
        raise ArgumentError, "URL inválida"
      end

      @value = value
    rescue URI::InvalidURIError
      raise ArgumentError, "URL inválida"
    end

    def to_s = value
  end
end
