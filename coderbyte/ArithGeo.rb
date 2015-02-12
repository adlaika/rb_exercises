#returns "Arithmetic" if arr follows arithmetic pattern, 
# and "Geometric" if arr follows geometric pattern,
# else returns -1

def ArithGeo(arr)
  return "Arithmetic" if is_arith?(arr)
  return "Geometric" if is_geom?(arr)
  -1
end

def is_arith?(arr)
  diff = arr[1] - arr[0]
  xs = arr.each_with_index.map{|x, i| arr[0] + (diff * i)}
  xs[0] = arr[0]
  xs == arr
end

def is_geom?(arr)
  diff = arr[1].div(arr[0])
  xs = arr.each_with_index.map{|x, i| arr[0] * (diff ** i)}
  xs[0] = arr[0]
  xs == arr
end