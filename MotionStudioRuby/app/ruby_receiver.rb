class RubyReceiver

	attr_reader :nothing, :integer, :object, :simple_object, :interface

	def with_nothing
		@nothing = true
	end

	def with_integer(aInteger)
		@integer = aInteger
	end

	def with_object(aObject)
		@object = aObject
	end

	def with_simple_object(aObject)
		@simple_object = aObject
	end

	def with_interface(aObject)
		@interface = aObject
	end

end
