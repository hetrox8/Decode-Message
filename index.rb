# frozen_string_literal: true

# Define a hash to map Morse code to characters
MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z', '-----' => '0', '.----' => '1', '..---' => '2',
  '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6',
  '--...' => '7', '---..' => '8', '----.' => '9'
}.freeze

# Method to decode a Morse code character and return it in uppercase
def decode_char(morse_char)
  MORSE_CODE[morse_char] || ''
end

# Method to decode an entire word in Morse code and return the string representation
def decode_word(morse_word)
  morse_word.split(' ').map { |char| decode_char(char) }.join
end

# Method to decode the entire message in Morse code
def decode(message)
  message.split('   ').map { |word| decode_word(word) }.join(' ')
end

# Example usage to decode the message from the old bottle
morse_message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode(morse_message)
puts decoded_message  # Output: "ABOVE FULL OF RUBIES"
