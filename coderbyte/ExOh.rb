#returns true if number of xs and os in string match

def ExOh(str)
  xs = str.scan(/x/).count
  os = str.scan(/o/).count
  xs == os
end