module ValueObjects
  class Phone
    attr_reader :value

    def initialize(value)
      normalized = value.to_s.gsub(/\D/, "")

      raise ArgumentError, 'Telefone inválido' unless normalized.length.between?(10, 11)

      @value = normalized
    end

    def to_s = value
  end
end
