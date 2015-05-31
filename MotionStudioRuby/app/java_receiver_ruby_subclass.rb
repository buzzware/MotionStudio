class JavaReceiverRubySubclass < Example::Com::Motionstudiolib::JavaReceiver

	attr_reader :received

	def with_simple_object(object)
		@received = true
		super(object)
	end

end
