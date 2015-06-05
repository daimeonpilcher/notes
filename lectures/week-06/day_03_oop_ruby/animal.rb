class Animal
	attr_reader :kind
	attr_reader :state
	def initialize kind, state="awake"
		@kind = kind
		@state = state
	end
	def eat food="nothing"
		return "I'm hungry, please feed me!" if food == "nothing"
		return "Thank you very much!" if food != @kind
		return "What kind of " + @kind + " do you think I am? I don't eat other " + @kind + "s"
	end
	def sleep
		@state = "asleep"
	end
	def wake
		@state = "awake"
	end
end
