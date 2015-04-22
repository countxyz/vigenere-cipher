class VigenereCipher

  def initialize text, key
    @text     = text.to_s
    @key      = key.to_s
    @alphabet = ('a'..'z').to_a
    @shifts ||= []
    @result ||= []
  end

  def encode
    key_char_to_shift
    tabula_recta
    @result.join
  end

  def key_char_to_shift
    @key.each_char { |char| @shifts << char.ord - 97 }
  end

  def tabula_recta
    @result << @text.each_char.inject('') do |encrypt, char|
      rot_shift = Hash[@alphabet.zip(@alphabet.rotate @shifts.shift)]
      encrypt + rot_shift[char]
    end
  end
end
