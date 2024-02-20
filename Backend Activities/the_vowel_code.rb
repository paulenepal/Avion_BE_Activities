VOWELS_NUMBERS = { "a" => "1", "e" => "2", "i" => "3", "o" => "4", "u" => "5"}

def encode(string)
    char_array = string.split("")

    encoded_chars = char_array.map do |char|
        VOWELS_NUMBERS.key?(char) ? VOWELS_NUMBERS[char] : char
    end

    encoded_str = encoded_chars.join
    return encoded_str
end

def decode(string)
    reversed_vm = VOWELS_NUMBERS.invert

    char_array = string.split("")
    decoded_chars = char_array.map do |char|
        reversed_vm.key?(char) ? reversed_vm[char] : char
    end

    decoded_str = decoded_chars.join
    return decoded_str
end

encode("hello")
decode("h3 th2r2")