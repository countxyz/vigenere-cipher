require 'vigenere_cipher'

RSpec.describe VigenereCipher do

  describe 'Encoding' do
    it 'encodes text with a key' do
      text, key = 'password', 'vigenere'
      expect((VigenereCipher.new text, key).encode).to eq 'kiywjsih'
    end
  end
end
