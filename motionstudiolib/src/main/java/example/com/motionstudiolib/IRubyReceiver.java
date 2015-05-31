package example.com.motionstudiolib;

public interface IRubyReceiver {
	Boolean with_nothing();
	Integer with_integer(Integer aInteger);
	Object with_object(Object aObject);
	SimpleJavaObject with_simple_object(SimpleJavaObject aObject);
	ISimpleJavaObject with_interface(ISimpleJavaObject aObject);
}
