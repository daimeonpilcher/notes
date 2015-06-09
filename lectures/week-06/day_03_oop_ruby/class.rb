class Student
	def initialize#(name, fav_language)
		#aftter Studen.new is run,
		#the instance is immediately initialized
	end
end

# expect this to run

wyatt = Student.new#("Wyatt", "ruby")

class Car(color)
	@@car_count = 0
	def initialize(color)	# use this to add any additional attributes	
		@color = color
		@@car_count =+ 1
	end
	def get_car_count
		@@car_count
	end
	def drive			# internal function call
		p "Driving"
	end
	attr_accessor :color #creates both setter and getter for color
	def is_color?(paint_color) #internal true/false call check
		self.color == paint_color
	end
	#setter
	def name=(input_name)
		@name = input_name   # @name is a shared scope variable currently within the instance
	end						 # $name would be a globally accessible variable.
	#getter
	def name
		@name
	end

end

# to create new Car

porsche = Car.new 
# =>"Vroom"
# => <Car:0x007fe5a1a754e8>
porsche.drive
# =>"Driving"

porsche.methods Object.