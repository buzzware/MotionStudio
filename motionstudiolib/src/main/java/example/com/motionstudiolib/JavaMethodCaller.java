package example.com.motionstudiolib;

public class JavaMethodCaller {

	private final JavaBaseReceiver javaReceiver;

	public JavaMethodCaller(JavaBaseReceiver javaReceiver) {
		this.javaReceiver = javaReceiver;
	}

	public SimpleJavaObject call_with_simple_object(SimpleJavaObject simpleJavaObject) {
		return javaReceiver.with_simple_object(simpleJavaObject);
	}

}
