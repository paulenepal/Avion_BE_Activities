def find_uniq(array)
  uniq_number = array[0]

  array.each do |element|
    unless element == uniq_number
      return element
    end
  end
  uniq_number = element
end

puts find_uniq([1, 1, 1, 2, 1, 1]) #should output 2
puts find_uniq([0, 0, 0.55, 0, 0]) #should output 0.55