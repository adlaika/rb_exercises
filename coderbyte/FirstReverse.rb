#reverses a string

def FirstReverse(str)

  result = ""
  i = str.length - 1
  
  while i >= 0
    result << str[i]
    i -= 1
  end

  return result  
         
end