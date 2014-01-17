class Point
	attr_accessor :x, :y

def initialize(x,y)
	@x = x
	@y = y
end

def to_s
	"(#{@x}, #{@y})"
	end
end

	#def x=(x) #defined a method called x equals
	#	@x = x
	#end

def add(point)
	Point.new(@x + point.x, @y + point.y)
end


p1 = Point.new(5,5)
p2 = Point.new(2,7)

puts p1
puts p2

p1.x = 8 # method
p1.y = 9 # method
puts p1

puts p1.add(p2)