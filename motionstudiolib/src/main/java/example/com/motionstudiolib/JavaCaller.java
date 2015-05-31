package example.com.motionstudiolib;

public class JavaCaller {


	private IRubyReceiver receiver;

	public JavaCaller() {
	}

	public JavaCaller(IRubyReceiver aReceiver) {
		this.receiver = aReceiver;
	}

	public IRubyReceiver getReceiver() {
		return receiver;
	}

	public void setReceiver(IRubyReceiver receiver) {
		this.receiver = receiver;
	}

	public Boolean simplest_method() {
		return receiver.simplest_method();
	}

}
