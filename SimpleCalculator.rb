#from RubyMonk exercise: http://rubymonk.com/learning/books/1-ruby-primer/chapters/19-ruby-methods/lessons/69-new-lesson#solution3899

def add(*nums)
  nums.inject{|sum, n| sum + n}
end

def subtract(*nums)
  nums.inject{|diff, n| diff - n}
end

def calculate(*args)
  #if last arg is Hash, extract it
  #else make empty Hash
  opt = ( args[-1].is_a?(Hash) ? args.pop : {} )
  return add(*args) if opt.empty? || opt[:add]
  return subtract(*args) if opt[:subtract]
end
