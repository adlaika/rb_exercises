#returns true if string is palindrome

def Palindrome(str)
  str = str.scan(/\w/)
  str == str.reverse
end