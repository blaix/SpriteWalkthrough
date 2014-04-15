class HelloScene < SKScene
  attr_accessor :contentCreated

  def didMoveToView(view)
    return if self.contentCreated
    self.createSceneContents
    self.contentCreated = true
  end

  def createSceneContents
    self.backgroundColor = UIColor.blueColor # how to use SKColor macro in RM?
    self.scaleMode = SKSceneScaleModeAspectFit
    self.addChild(self.newHelloNode)
  end

  def newHelloNode
    helloNode = SKLabelNode.labelNodeWithFontNamed("Chalkduster")
    helloNode.text = "Hello, World!"
    helloNode.fontSize = 42
    helloNode.position = CGPointMake(CGRectGetMidX(self.frame),
                                     CGRectGetMidY(self.frame))
    helloNode
  end
end
