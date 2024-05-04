def up_array(array)
  if array.nil? || array.empty?
    return nil
  end
  
  number = array.join.to_i
  number += 1
  
  result = number.digits.reverse
  result
end


puts "#{up_array([2, 3, 9])}"
puts "#{up_array([4, 3, 2, 5])}"
