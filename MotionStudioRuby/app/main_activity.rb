class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    Android::Util::Log.i("MotionStudio", Example::Com::Motionstudiolib::MyModule.test);
  end
end
