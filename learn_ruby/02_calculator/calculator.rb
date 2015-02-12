def add(x,y)
  x + y
end

def subtract(x,y)
  x - y
end

def sum(arr)
  arr.inject(0){|sum, n| sum + n}
end

def multiply(*nums)
  nums.reduce(1) {|product, n| product * n}
end

def power(base, exp)
  if exp == 1
    return base
  else
    return base * power(base, exp - 1)
  end
end

def factorial(n)
  if n == 0 || n == 1
    return 1
  else
    return n * factorial(n-1)
  end
end
