class ViewController < UIViewController
  def loadView
    self.view = SKView.alloc.initWithFrame(UIScreen.mainScreen.bounds)
  end

  def viewDidLoad
    super

    spriteView = self.view
    spriteView.showsDrawCount = true
    spriteView.showsNodeCount = true
    spriteView.showsFPS = true
  end
end
