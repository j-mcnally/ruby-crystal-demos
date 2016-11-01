class Demo
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def ==(other)
    other.is_a?(Demo) && (other.name == self.name)
  end
end

class NotDemo
end


a = Demo.new("Justin")
b = Demo.new("Richard")
c = Demo.new("Justin")
d = NotDemo.new

puts a == b
puts a == c
puts a == d
