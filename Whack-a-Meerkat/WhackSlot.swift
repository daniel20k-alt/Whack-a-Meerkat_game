//
//  WhackSlot.swift
//  Whack-a-Meerkat
//
//  Created by DDDD on 18/03/2020.
//  Copyright © 2020 MeerkatWorks. All rights reserved.
//

import SpriteKit
import UIKit

class WhackSlot: SKNode {

    var charNode: SKSpriteNode!
    
    func configure(at position:CGPoint) {
        self.position = position
        
        let sprite = SKSpriteNode(imageNamed: "whackHole")
        addChild(sprite)
        
        let cropNode = SKCropNode()
        cropNode.position = CGPoint(x: 0, y: 15)
        cropNode.zPosition = 1
        cropNode.maskNode = SKSpriteNode(imageNamed: "whackMask")
        
        charNode = SKSpriteNode(imageNamed: "penguinGood")
        charNode.position = CGPoint(x:0, y: -90)
        charNode.name = "character"
        cropNode.addChild(charNode)
        
        addChild(cropNode)
    }
}
