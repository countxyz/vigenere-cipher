class VigenereCipher

  def initialize text, key
    @text     = input_format text
    @key      = input_format key
    @alphabet = ('a'..'z').to_a
    @shifts ||= []
    @result ||= []
    key_format
  end

  def input_format input
    input_downcase = input.downcase
    input          = input_downcase.gsub(' ', '')
  end

  def key_format
    assemble_key if @key.length != @text.length
  end

  def encode
    key_char_to_shift
    tabula_recta
    @result.join
  end

  private

  def text_key_divisibility
    @text.length / @key.length
  end

  def text_key_modulo
    @text.length % @key.length
  end

  def key_string_match_range
    0..text_key_modulo - 1
  end

  def key_string_match
    @key[key_string_match_range]
  end

  def assemble_key
    @key = @key * text_key_divisibility + key_string_match
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
