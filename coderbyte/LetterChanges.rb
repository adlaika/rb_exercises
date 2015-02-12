# Increments letters in string by one, then capitalizes vowels.
# No effect on non-letter chars

def LetterChanges(str)

  new_str = ""
  result = ""
  vowels = ['a','e','i','o','u']

  str.each_byte do |b|
    if b > 96 && b < 122
      b += 1
    elsif b == 122
      b = 97
    end
    new_str << b
  end

  new_str.each_char do |c|
    if vowels.include?(c)
      c = c.upcase
    end
    result << c
  end

  return result

end
