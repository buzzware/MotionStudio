class RubyBaseBridge < Example::Com::Motionstudiolib::JavaBaseBridge

	attr_reader :event

	def receive(event)
		@event = event
	end

end
