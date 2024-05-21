require './lib/caeser_cipher.rb'

describe CaeserCipher do
  describe '#caeser_cipher' do
    it 'shift letters correctly for positive shift' do
      cipher = CaeserCipher.new
      string = 'aab'
      shift = 5
      expect(cipher.caeser_cipher(string, shift)).to eq('ffg')
    end

  end
end