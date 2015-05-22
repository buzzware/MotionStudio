class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    p Example::Com::Motionstudiolib::MyModule.test
    Android::Util::Log.i("MotionStudio", Example::Com::Motionstudiolib::MyModule.test);
  end
end
