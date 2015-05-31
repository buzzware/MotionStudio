package example.com.motionstudiolib;

public class JavaBaseReceiver {

	public Boolean nothing;
	public Integer integer;
	public Object object;
	public SimpleJavaObject simple_object;
	public ISimpleJavaObject _interface;

	public Boolean getNothing() {
		return nothing;
	}

	public Integer getInteger() {
		return integer;
	}

	public Object getObject() {
		return object;
	}

	public SimpleJavaObject getSimple_object() {
		return simple_object;
	}

	public ISimpleJavaObject getInterface() {
		return _interface;
	}

	public Boolean with_nothing() {
		return nothing = true;
	}

	public Integer with_integer(Integer aInteger) {
		return integer = aInteger;
	}

	public Object with_object(Object aObject) {
		return object = aObject;
	}

	public SimpleJavaObject with_simple_object(SimpleJavaObject aObject) {
		return simple_object = aObject;
	}

	public ISimpleJavaObject with_interface(ISimpleJavaObject aSimpleJavaObject) {
		return _interface = aSimpleJavaObject;
	}

}
