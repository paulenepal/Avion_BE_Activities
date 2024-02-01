# "Coding Exercise: Unique In Order"

# Implement the method unique_in_order which takes as argument a sequence and returns a list of items without any elements
# with the same value next to each other and preserving the original order of elements."

def unique_in_order(sequence)
    final_array = []
    last_variable = nil

    sequence = sequence.split("") if sequence.is_a?(String)
    sequence.each do |element|
        if element != last_variable
            final_array << element
            last_variable = element
        end
    end
    final_array
end

puts "Output: #{unique_in_order('AAAAABBCCDAAABB')}"
puts "Output: #{unique_in_order('ABBCcAD')}"
puts "Output: #{unique_in_order([1,2,2,3,3])}"