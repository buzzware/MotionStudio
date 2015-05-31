# Attempting to use a Java base class to receive the event from EventBus in onEvent and
# then a Ruby implementation
describe "base bridge object for Green Robot EventBus" do
#	it "wrapper bridge works in ruby" do
#		receiver = RubyReceiver.new
#		bridge = Example::Com::Motionstudiolib::WrapperBridge.new(receiver)
#		event = Example::Com::Motionstudiolib::SimpleJavaObject.new
#		bridge.onEvent(event)
#		receiver.simple_object.should == event
#	end

	it "split bridge works in Java" do
		receiver = RubyBaseBridge.new
		event = Example::Com::Motionstudiolib::SimpleJavaObject.new
		caller = Example::Com::Motionstudiolib::JavaBaseBridgeCaller.new
		caller.call(receiver,event);
		receiver.event.should == event
	end
end
