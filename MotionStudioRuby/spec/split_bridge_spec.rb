# Attempting to use a split class to receive the event from EventBus in onEvent and handle it in receive
# The problem is, how can Ruby provide a java compatible interface? The split class catches the event in
# onEvent, but we still have a problem calling into the Ruby side of the class
#describe "split bridge object for Green Robot EventBus" do
#	it "split bridge works in ruby" do
#		puts 'start'
#		bridge = SplitBridge.new
#		puts 'SplitBridge'
#		event = Example::Com::Motionstudiolib::SimpleJavaObject.new
#		puts 'SimpleJavaObject'
#		bridge.onEvent(event)
#		puts 'onEvent'
#		bridge.event.should == event
#	end
#
#	it "split bridge works in Java" do
#		bridge = SplitBridge.new
#		event = Example::Com::Motionstudiolib::SimpleJavaObject.new
#		caller = JavaEventCaller.new
#		caller.call(bridge,event);
#		bridge.onEvent(event)
#		bridge.event.should == event
#	end
#end
