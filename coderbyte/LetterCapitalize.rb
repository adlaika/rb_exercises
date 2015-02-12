# capitalizes each word in string

def LetterCapitalize(str)
  return str.split.map(&:capitalize).join(' ')    
end