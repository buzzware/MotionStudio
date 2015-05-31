package example.com.motionstudiolib;

public class JavaBaseBridge {
	public void onEvent(SimpleJavaObject aSimpleJavaObject) {
		((ISimpleReceiver) this).receive(aSimpleJavaObject);
	}
}
