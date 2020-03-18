//
//  GameScene.swift
//  Whack-a-Meerkat
//
//  Created by DDDD on 18/03/2020.
//  Copyright © 2020 MeerkatWorks. All rights reserved.
//

import SpriteKit


class GameScene: SKScene {

    var gameScore: SKLabelNode!
    
    var score = 0 {
    didSet {
        gameScore.text = "Score: \(score)"
        }
    }
    
    
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "whackBackroung")
        background.position = CGPoint(x: 512, y:384)
        background.blendMode = .replace
        background.zPosition = -1
        addChild(background)
        
        gameScore = SKLabelNode(fontNamed: "Chalkduster")
        gameScore.text = "Score: 0"
        gameScore.position = CGPoint(x: 8, y: 8)
        gameScore.horizontalAlignmentMode = .left
        gameScore.fontSize = 48
        addChild(gameScore)
    
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
}
