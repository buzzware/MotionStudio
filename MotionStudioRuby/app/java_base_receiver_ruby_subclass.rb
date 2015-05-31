class JavaBaseReceiverRubySubclass < Example::Com::Motionstudiolib::JavaBaseReceiver

	attr_reader :received

	def with_simple_object(object)
		@received = true
		super(object)
	end

end
