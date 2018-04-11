# write your solution here
def pig_latin(input)
  vowels = ["a", "e", "i", "o", "u"]
  if vowels.include? input[0]
    return input + "way"
  else
    # loop through words until vowel is reached
    count = 0
    prev_char = ''
    input.each_char.with_index do |letter, index|
      if vowels.include?(letter) || (index > 0 && letter == 'y')
        if (prev_char == 'q' && letter == 'u')
          count += 1
        end
        break
      else
        prev_char = letter
        count += 1
      end
    end
    return input.slice(count, input.length) + input.slice(0, count) + "ay"
  end
end

puts pig_latin("squeal")