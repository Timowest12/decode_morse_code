def decodeChar(str)
    @morseChar = {
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
        '--..' => 'Z',
    }
    @morseChar[str]
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