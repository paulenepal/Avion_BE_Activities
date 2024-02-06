def century_from_year(year)
    century = year / 100
    century += 1 unless year % 100 == 0
    return century
end

puts century_from_year(1705) # 18
puts century_from_year(1900) # 19
puts century_from_year(1601) # 17
puts century_from_year(2000) # 20
