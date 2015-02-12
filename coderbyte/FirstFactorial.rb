#simple factorial

def FirstFactorial(num)

  if num == 0 || num == 1
    return 1
  elsif num > 1
    result = num * FirstFactorial(num - 1)
  end

  return result 
         
end