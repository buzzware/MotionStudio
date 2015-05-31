package example.com.motionstudiolib;

public class JavaCaller {

	private IReceiver receiver;

	public JavaCaller() {
	}

	public JavaCaller(IReceiver aReceiver) {
		this.receiver = aReceiver;
	}

	public IReceiver getReceiver() {
		return receiver;
	}

	public void setReceiver(IReceiver receiver) {
		this.receiver = receiver;
	}

	public Boolean with_nothing() {
		return receiver.with_nothing();
	}

	public Integer with_integer(Integer aInteger) {
		return receiver.with_integer(aInteger);
	}

	public Object with_object(Object aObject) {
		return receiver.with_object(aObject);
	}

	public SimpleJavaObject with_simple_object(SimpleJavaObject aObject) {
		return receiver.with_simple_object(aObject);
	}

	public ISimpleJavaObject with_interface(ISimpleJavaObject aObject) {
		return receiver.with_interface(aObject);
	}

}
