class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    sceneView = ViewController.alloc.init

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = sceneView
    @window.makeKeyAndVisible

    true
  end
end
