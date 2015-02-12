#return true if any combination of numbers in array
# can add up to the largest number in the array

def ArrayAdditionI(arr)
  i = 2
  while i < arr.length
    cs = arr.combination(i)
    sums = cs.map{|c| c.inject{|sum, n| sum += n}}
    return true if sums.include?(arr.max)
    i += 1
  end
  return false
end

#tests
puts ArrayAdditionI([10,20,30,40,100])
puts ArrayAdditionI([3,5,-1,8,12]) # true
puts ArrayAdditionI([1,2,3,4,1234]) # false
