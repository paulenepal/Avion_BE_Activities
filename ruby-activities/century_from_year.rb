def century_from_year(year)
    year % 100 == 0 ? year / 100 : year / 100 + 1
end

puts century_from_year(1705) # 18
puts century_from_year(1900) # 19
puts century_from_year(1601) # 17
puts century_from_year(2000) # 20