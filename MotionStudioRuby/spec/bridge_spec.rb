class RubyReceiver

	def simplest_method
		true
	end

end

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



#should create java object with ruby implementation
#should cast ruby object to java interface
#ruby should override unique method



describe "Java calling Ruby implementation" do

	it "simplest method" do
		puts "start"
		caller = Example::Com::Motionstudiolib::JavaCaller.new
		puts "created caller"
		receiver = RubyReceiver.new
		caller.receiver = receiver
		puts "set receiver"
		caller.simplest_method.should == true
		puts "called and result correct"
		puts "end"
	end

	#it "expecting integer"
	#it "expecting Object with Java Object"
	#it "expecting Object with Ruby Object"
	#it "expecting Class"
	#it "expecting Interface with Java implementation"
	#it "expecting Interface with Ruby implementation"

end
