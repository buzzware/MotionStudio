package example.com.motionstudiolib;

public class WrapperBridge {

	private final IRubyReceiver receiver;

	public WrapperBridge(IRubyReceiver aReceiver) {
		receiver = aReceiver;
	}

	public void onEvent(SimpleJavaObject aSimpleJavaObject) {
		receiver.with_simple_object(aSimpleJavaObject);
	}
}
