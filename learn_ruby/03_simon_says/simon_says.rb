def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, n = 1)
  if n == 0
    return ""
  elsif n == 1 || n == 2
    return str + " " + str
  else
    return str + " " + repeat(str, n - 1)
  end
end

def start_of_word(str, n = 1)
  str.slice(0, n)
end

def first_word(str)
  words = str.split
  words[0]
end

def titleize(str)
  little_words = "and the a over".split
  words = str.split
  words.each do |w|
    if w == words[0]
      w[0] = w[0].capitalize
    elsif !little_words.include?(w)
      w[0] = w[0].capitalize
    end
  end
  return words.join(" ")
end
