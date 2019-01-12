class Atbash
  class << self
    def encode(string)
      sanitized = sanitize(string)
      each_five_characters(sanitized).tr(alphabet, key)
    end

    private

    def alphabet
      'abcdefghijklmnopqrstuvwxyz'
    end

    def key
      alphabet.reverse
    end

    def sanitize(string)
      string.downcase.gsub(/[^a-z0-9]/, '')
    end

    def each_five_characters(string)
      string.scan(/.{1,5}/).join(' ')
    end
  end
end
