#returns number of vowels in a string

def VowelCount(str)
  str.scan(/a|e|i|o|u/).length
end