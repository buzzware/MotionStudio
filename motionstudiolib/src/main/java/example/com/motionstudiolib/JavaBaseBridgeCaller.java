package example.com.motionstudiolib;

public class JavaBaseBridgeCaller {

	public void call(ISimpleReceiver aReceiver,SimpleJavaObject aEvent) {
		aReceiver.receive(aEvent);
	}

}
