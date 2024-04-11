puts "Coding Exercise: Isograms
\nAn isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines
whether a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case."
puts "\nEnter a word:"

word = gets.chomp

def is_isogram(word)
    arr = word.downcase.split("")

    arr.each_with_index do |letter, index|
        compare_letters = arr[0...index] + arr[(index+1)..-1]
        return false if compare_letters.include?(letter)
    end
    true
end

result = is_isogram(word)
puts result

# puts is_isogram("Dermatoglyphics")
# puts is_isogram("aba")
# puts is_isogram("moOse")
