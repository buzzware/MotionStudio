# this tests simply setting up JavaCaller with our RubyReceiver
describe "Java accepting Ruby implementation" do
	it "in setter" do
		receiver = RubyReceiver.new
		caller = Example::Com::Motionstudiolib::JavaCaller.new
		caller.receiver = receiver
		caller.receiver.should == receiver
	end

	it "in constructor" do
		receiver = RubyReceiver.new
		caller = Example::Com::Motionstudiolib::JavaCaller.new(receiver)
		caller.receiver.should == receiver
	end
end

describe "Java calling Ruby implementation" do

	it "simplest method" do
		puts "start"
		caller = Example::Com::Motionstudiolib::JavaCaller.new
		puts "created caller"
		receiver = RubyReceiver.new
		caller.receiver = receiver
		puts "set receiver"
		caller.with_nothing.should == true
		puts "called and result correct"
		puts "end"
	end

	it "expecting integer" do
		receiver = RubyReceiver.new
		caller = Example::Com::Motionstudiolib::JavaCaller.new(receiver)
		caller.with_integer(7).should == 7
	end

	it "expecting Object with Java Object" do
		receiver = RubyReceiver.new
		caller = Example::Com::Motionstudiolib::JavaCaller.new(receiver)
		object = Example::Com::Motionstudiolib::SimpleJavaObject.new
		caller.with_object(object).should == object
	end

	it "expecting Object with Ruby Object" do
		receiver = RubyReceiver.new
		caller = Example::Com::Motionstudiolib::JavaCaller.new(receiver)
		object = SimpleRubyObject.new
		caller.with_object(object).should == object
	end

	it "expecting Java Class" do
		receiver = RubyReceiver.new
		caller = Example::Com::Motionstudiolib::JavaCaller.new(receiver)
		object = Example::Com::Motionstudiolib::SimpleJavaObject.new
		caller.with_simple_object(object).should == object
	end

	it "expecting Java Class with Ruby subclass" do
		receiver = RubyReceiver.new
		caller = Example::Com::Motionstudiolib::JavaCaller.new(receiver)
		object = SimpleRubySubclass.new
		caller.with_simple_object(object).should == object
	end

	it "expecting Interface with Java implementation" do
		receiver = RubyReceiver.new
		caller = Example::Com::Motionstudiolib::JavaCaller.new(receiver)
		object = Example::Com::Motionstudiolib::SimpleJavaObject.new
		caller.with_interface(object).should == object
	end

	it "expecting Interface with Ruby implementation" do
		receiver = RubyReceiver.new
		caller = Example::Com::Motionstudiolib::JavaCaller.new(receiver)
		object = SimpleRubySubclass.new
		caller.with_interface(object).should == object
	end

end
