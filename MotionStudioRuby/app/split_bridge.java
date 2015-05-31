public void onEvent(example.com.motionstudiolib.SimpleJavaObject event) {
	android.util.Log.i("MS","start onEvent");
	example.com.motionstudiolib.ISplitBridge subs = (example.com.motionstudiolib.ISplitBridge) this;
	android.util.Log.i("MS","got subs");
	subs.receive(event);
	android.util.Log.i("MS","end onEvent");
}
