#convert minutes to "hr:min" format

def TimeConvert(num)
  mins = num.div(60)
  hrs = num % 60
  return "#{mins}:#{hrs}"
end