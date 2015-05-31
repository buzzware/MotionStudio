# Attempting to use a wrapper class to receive the event from EventBus in onEvent and
# call a Ruby interface implementation
describe "wrapper bridge object for Green Robot EventBus" do
	it "wrapper bridge works in ruby" do
		receiver = RubyReceiver.new
		bridge = Example::Com::Motionstudiolib::WrapperBridge.new(receiver)
		event = Example::Com::Motionstudiolib::SimpleJavaObject.new
		bridge.onEvent(event)
		receiver.simple_object.should == event
	end

	it "split bridge works in Java" do
		receiver = RubyReceiver.new
		bridge = Example::Com::Motionstudiolib::WrapperBridge.new(receiver)
		event = Example::Com::Motionstudiolib::SimpleJavaObject.new
		caller = Example::Com::Motionstudiolib::JavaWrapperBridgeCaller.new
		caller.call(bridge,event);
		receiver.simple_object.should == event
	end
end
