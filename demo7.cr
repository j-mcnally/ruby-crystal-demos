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
b = NotDemo.new
puts a == b
