def caesar_cipher(string, right_shift)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  lowercase = alphabet.split('')
  uppercase = alphabet.upcase.split('')
  phrase = string.split('')
  cipher = []

  phrase.each do |char|
    if uppercase.include?(char)
      cipher << uppercase[wrap(uppercase.index(char) + right_shift, 26)]
    elsif lowercase.include?(char)
      cipher << lowercase[wrap(lowercase.index(char) + right_shift, 26)]
    else
      cipher << char
    end
  end

  cipher = cipher.join('')
  puts cipher
end

def wrap(value, max_value)
  value > max_value ? value - max_value : value
end

caesar_cipher("What a string!", 5)