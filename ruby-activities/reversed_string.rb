def reverse(string)
  reversed_array = []
  
  string_array = string.split("")

  string_array.reverse_each do |element|
    reversed_array << element
  end

  reversed_string = reversed_array.join("")
end

puts reverse('try')
puts reverse('hello')