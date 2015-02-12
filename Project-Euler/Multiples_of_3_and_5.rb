def sum_array(arr)
  arr.reduce(0){|n, sum| sum += n}
end

#tests
puts "sum_array tests"
puts "#{sum_array([1,2,3])} == 6"
puts "#{sum_array([])} == 0"

def multiples_of_x_up_to_n(x,n)
  result = []
  for i in 1...n do
    result << i if (i % x == 0)
  end
  return result
end

#tests
puts "multiples_of_x_up_to_n tests"
puts "#{multiples_of_x_up_to_n(3, 10)} == [3, 6, 9]"
puts "#{multiples_of_x_up_to_n(1, 3) } == [1, 2, 3]"
puts "#{multiples_of_x_up_to_n(5,15) } == [5, 10]"

#tests
puts "#{sum_array(multiples_of_x_up_to_n(3,10)) + sum_array(multiples_of_x_up_to_n(5,10))} == 23}"
puts "answer to problem"
puts "#{sum_array(multiples_of_x_up_to_n(3,1000)) + sum_array(multiples_of_x_up_to_n(5,1000)) - sum_array(multiples_of_x_up_to_n(15, 1000))}"
