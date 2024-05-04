def letter_count(string)
  counts = {}

  string.each_char do |char|
    counts[char.to_sym] ||= 0
    counts[char.to_sym] += 1
  end

  sorted_hash = counts.sort_by { |key, _| key}.to_h

end

puts letter_count('arithmetics')