def gimme(array)

  sorted_array = array.sort
  mid_num = sorted_array[1]

  index = array.index(mid_num)
  return index

end

puts "The index of the middle element is #{gimme([2, 3, 1])}"   # returns 0
puts "The index of the middle element is #{gimme([5, 10, 14])}"   # returns 1