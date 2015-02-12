Using the Ruby language, have the function SimpleSymbols(str) take the str parameter being passed and determine if it is an acceptable sequence by either returning the string true or false. The str parameter will be composed of + and = symbols with several letters between them (ie. ++d+===+c++==a) and for the string to be true each letter must be surrounded by a + symbol. So the string to the left would be false. The string will not be empty and will have at least one letter. 

def SimpleSymbols(str)
  result = false
  i = 0
  prev = ""
  nex = ""
  alphabet = ["a".."z"]
  
  while i < str.length
    prev = str[i-1]
    nex = str[i+1]
    
    if alphabet.include?(str[i])
      if prev == "+" && nex == "+"
        result = true
      end
      return false
    else
      result = true
    end
    i += 1
  end
  
  return result
end