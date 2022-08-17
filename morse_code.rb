# Create dictionary of caracters
@caracters = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

# decode each letter
def letter_decoder(letter)
  @caracters.each do |key, value|
    return value if key == letter
  end
end

# decode each word
def word_decoder(word)
  @current_word = word.split.map { |letter| letter_decoder(letter) }.join
  "#{@current_word} "
end

# decode each sentence
def sentence_decoder(sentence)
  @current_sentence = sentence.split('   ').map { |word| word_decoder(word) }.join
  print "#{@current_sentence.downcase} \n"
end

sentence_decoder('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
sentence_decoder('.-  .-..  .  -..-  .-  -.  -..  .  .-.     ..  ...     ...  ..  -.-.  -.-')
sentence_decoder('.--  ---  .-.  .-  ...  ....     ..  ...     .-  .-..  .--  .-  -.--  ...     .-..  .-  -  .')
