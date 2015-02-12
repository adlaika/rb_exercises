def translate(str)
  alphabet = ("a".."z").to_a + ("A".."Z").to_a
  consonants = alphabet - ("a e i o u".split) - ("A E I O U").split
  vowels = alphabet - consonants

  words = str.split
  result = ""

  words.each do |w|
    if vowels.include?(w[0])
      result << (w + "ay")
    elsif consonants.include?(w[0]) && consonants.include?(w[1])
      arr = w.split(//)
      arr.shift
      arr.shift
      arr = (arr + [w[0]] + [w[1]]) + ["ay"]
      result = arr.join
    elsif consonants.include?(w[0])
      arr = w.split(//)
      arr.shift
      arr = (arr + [w[0]]) + ["ay"]
      result = arr.join
    end
  end
  return result
end
