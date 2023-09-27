require_relative 'alphabet'

# Method to decode character in uppercase
def decode_char(morse_alphabet)
  ALPHABET[morse_alphabet]
end

# Method to decode single word
def decode_word(morse_word)
  morse_word.split.map { |morse_char| decode_char(morse_char) }.join
end

# Method to Decode a sentence
def decode(sentence)
  sentence.split('   ').map { |morse_word| decode_word(morse_word) }.join(' ')
end

# Return a box full of rubies
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
