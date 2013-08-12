
# Creating a Class
class Box

# If you choose not to make the "Getters and Setters": You can use this attr_accessor 
#attr_accessor :width, :height

# Example of Class Variable	
@@count = 0

# Example of constants
BOX_COMPANY = "TATA Inc"
BOX_WEIGHT = 10

# Initializing Class
	def initialize(w,h)
		@width = w
		@height = h

		@@count += 1
	end

# Adding getter methods
	def print_width
		@width
	end

	def print_height
		@height
	end

# Setter Methods
	def set_width=(value)
		@width = value
	end

	def set_height=(value)
		@height = value
	end

	def area
		@width * @height
	end

	def self.print_count
		puts "Count is: #{@@count}"
	end

	# Protected 
	#protected :area
end

# Defining SubClass
	class BigBox < Box
	
		def print_area
			@area = @height * @width
			puts "Big box area is #{@area}"
		end
	end


# Calling a new box object
box = Box.new(10, 20)
box1 = BigBox.new(40, 60)
# Using Setter Methods
box.set_width = 30
box.set_height = 50

# Using the accessor methods
x = box.print_width()
y = box.print_height()
a = box.area()

puts "Width of box is: #{x} and Height is: #{y}"
puts "Area of the box is #{a}"
Box.print_count
box1.print_area() 
