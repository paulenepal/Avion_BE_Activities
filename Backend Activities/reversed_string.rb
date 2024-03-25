def rev_string(string)
  reversed_array = []
  
  string_array = string.split("")

  string_array.reverse_each do |element|
    reversed_array << element
  end

  return reversed_string = reversed_array.join("")
end

puts rev_string('try')



