def decodeChar(str)
  @morse_Char = {
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
  @morse_Char[str]
end

def decodeWord(str)
  morse = str.split
  word = morse.map { |c| decodeChar(c) }
  word.join
end

def decodeSentence(str)
  morse = str.split('  ')
  sentence = morse.map { |w| decodeWord(w) }
  sentence.join(' ')
end
decodeWord('.-')
decodeWord('-- -.--')
decodeSentence('-- -.--   -. .- -- .')
decodeSentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
