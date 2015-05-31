package example.com.motionstudiolib;

public class WrapperBridge {

	private final IReceiver receiver;

	public WrapperBridge(IReceiver aReceiver) {
		receiver = aReceiver;
	}

	public void onEvent(SimpleJavaObject aSimpleJavaObject) {
		receiver.with_simple_object(aSimpleJavaObject);
	}
}
