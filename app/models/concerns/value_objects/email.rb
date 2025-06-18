module ValueObjects
  class Email
    attr_reader :value

    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    def initialize(value)
      raise ArgumentError, "Email inválido" unless value =~ EMAIL_REGEX

      @value = value
    end

    def to_s = value
  end
end
