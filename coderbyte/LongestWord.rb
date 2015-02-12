#returns longest word in sentence

def LongestWord(sen)

  alphabet = "a".."z"
  letters_only = ""

  sen.each_char do |c|
    if alphabet.include?(c) || c == " "
      letters_only << c
    end
  end
  result = ""

  letters_only.split.each do |w|
    if w.length > result.length
      result = w
    end
  end
  # code goes here
  return result

end
