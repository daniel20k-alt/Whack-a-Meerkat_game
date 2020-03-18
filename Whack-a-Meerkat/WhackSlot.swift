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

    func configure(at position:CGPoint) {
        self.position = position
        
        let sprite = SKSpriteNode(imageNamed: "whackHole")
        addChild(sprite)
        
    }
    
    
}
