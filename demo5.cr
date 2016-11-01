def add(x : Number, y : Number)
  x+y
end

def add(x : Bool, y : Bool)
  x && y
end

def add(x : Number, y : Bool)
  y ? x : 0
end

puts add(5, 3)
puts add(true, false)
puts add(5, false)
puts add(5, true)
