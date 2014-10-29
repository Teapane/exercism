class Crypto
  attr_reader :plaintext

  def initialize(plaintext)
    @plaintext = plaintext
  end

  def normalize_plaintext
    @normalized ||= plaintext.downcase.gsub(/\W/, '')
  end

  def size
    Math.sqrt(normalize_plaintext.length).ceil
  end

  def plaintext_segments
    bits(normalize_plaintext, size)
  end

  def ciphertext
    plaintext_segments.map do |input|
      input.split('').fill('', input.length...size)
    end.transpose.flatten.join
  end

  def normalize_ciphertext
    bits(ciphertext, 5).join(" ")
  end

  def bits(s, size)
    s.scan(/.{1,#{size}}/)
  end
end
