def disemvowel_trolls(comment)
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    new_comment = []

    comment.split("").each do |letter|
        new_comment << letter unless vowels.include?(letter)
    end
    return new_comment.join('')
end

# This website is for losers LOL!
puts disemvowel_trolls('This website is for losers LOL!')