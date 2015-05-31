# Attempting to use a Java base class to give a ruby overriding method the correct type information
# to receive the event without using interfaces eg. for EventBus onEvent
describe "overriding Java method with Ruby" do
	it "should maintain argument types when inheriting from interfaced object" do
		receiver = JavaReceiverRubySubclass.new # implements IReceiver in Java
		caller = Example::Com::Motionstudiolib::JavaMethodCaller.new(receiver)
		event = Example::Com::Motionstudiolib::SimpleJavaObject.new
		caller.call_with_simple_object(event)
		receiver.received.should == true
		receiver.simple_object.should == event
	end

	it "should maintain argument types when inheriting from non-interfaced object" do
		receiver = JavaBaseReceiverRubySubclass.new # does not implement IReceiver in Java
		caller = Example::Com::Motionstudiolib::JavaMethodCaller.new(receiver)
		event = Example::Com::Motionstudiolib::SimpleJavaObject.new
		caller.call_with_simple_object(event)
		receiver.received.should == true
		receiver.simple_object.should == event
	end
end
