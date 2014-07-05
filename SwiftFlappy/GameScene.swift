//
//  GameScene.swift
//  SwiftFlappy
//
//  Created by Reinaldo Haynes on 7/5/14.
//  Copyright (c) 2014 Reinaldo Haynes. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var bird = SKSpriteNode()
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        var birdTexture1 = SKTexture(imageNamed: "Bird1")
        birdTexture1.filteringMode = SKTextureFilteringMode.Nearest
        var birdTexture2 = SKTexture(imageNamed: "Bird2")
        birdTexture2.filteringMode = SKTextureFilteringMode.Nearest
        
        var animation = SKAction.animateWithTextures([birdTexture1, birdTexture2], timePerFrame: 0.2)
        var flap = SKAction.repeatActionForever(animation)
        
        bird = SKSpriteNode(texture:birdTexture1)
        bird.position = CGPoint(x: self.frame.size.width / 2.8, y: CGRectGetMidY(self.frame))
        bird.runAction(flap)
        
        self.addChild(bird)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
