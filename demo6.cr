class Demo
  getter :name

  def initialize(@name : String)
  end

  def ==(other : self)
    other.name == name
  end

  def ==(other)
    false
  end
end

class NotDemo
end

a = Demo.new("Justin")

puts a == b
puts a == c
