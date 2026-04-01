def caesar_cipher(string, shift_amount)
  alphabet_length = 26

  string.chars.map do |char|
    char_code = char.ord

    base =
      if char_code.between?('a'.ord, 'z'.ord)
        'a'.ord
      elsif char_code.between?('A'.ord, 'Z'.ord)
        'A'.ord
      end

    if base
      (base + ((char_code - base + shift_amount) % alphabet_length)).chr
    else
      char
    end
  end.join
end

encrypted_string = caesar_cipher('What a string!', 5)
puts encrypted_string
