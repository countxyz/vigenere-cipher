require 'vigenere_cipher'

RSpec.describe VigenereCipher do

  describe 'Encoding' do

    describe 'Correct text and key format' do
      it 'encodes text with a key' do
        text, key = 'password', 'vigenere'
        expect((VigenereCipher.new text, key).encode).to eq 'kiywjsih'
      end
    end

    describe 'Incorrect text and key format' do

      context 'Incorrect text format' do
        it 'encodes upcase text with a key' do
          text, key = 'PASSWORD', 'vigenere'
          expect((VigenereCipher.new text, key).encode).to eq 'kiywjsih'
        end

        it 'encodes text with spaces with a key' do
          text, key = ' pas sword  ', 'vigenere'
          expect((VigenereCipher.new text, key).encode).to eq 'kiywjsih'
        end

        it 'encodes text with spaces and upcase text with a key' do
          text, key = ' paSs  WoR d  ', 'vigenere'
          expect((VigenereCipher.new text, key).encode).to eq 'kiywjsih'
        end
      end

      context 'Incorrect key format' do
        it 'encodes text with upcase key' do
          text, key = 'password', 'VIGENERE'
          expect((VigenereCipher.new text, key).encode).to eq 'kiywjsih'
        end

        it 'encodes text with key that has spaces' do
          text, key = 'password', '  vi gen ere '
          expect((VigenereCipher.new text, key).encode).to eq 'kiywjsih'
        end

        it 'encodes text with key that has upcase and spaces' do
          text, key = 'password', '  viGe  Ne Re '
          expect((VigenereCipher.new text, key).encode).to eq 'kiywjsih'
        end
      end

      context 'Incorrect text and key format' do
        it 'encodes text and key with spaces and upcase text' do
          text, key = ' paSs  WoR d  ', '  viGe  Ne Re '
          expect((VigenereCipher.new text, key).encode).to eq 'kiywjsih'
        end
      end
    end
  end
end
