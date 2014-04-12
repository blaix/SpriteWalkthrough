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

  def viewWillAppear(animated)
    hello = HelloScene.alloc.initWithSize(CGSizeMake(768, 1024))
    spriteView = self.view
    spriteView.presentScene(hello)
  end
end
