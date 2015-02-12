#return true if string contains a and b separated by exactly 3 chars

def ABCheck(str)
	str.scan(/a...b/ || /b...a/).length > 0
end