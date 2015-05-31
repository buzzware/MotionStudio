package example.com.motionstudiolib;

public class JavaWrapperBridgeCaller {

	public void call(WrapperBridge aBridge,SimpleJavaObject aEvent) {
		aBridge.onEvent(aEvent);
	}

}
