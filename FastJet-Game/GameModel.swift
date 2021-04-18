//
//  Game.swift
//  FastJet-Game
//
//  Created by Gary Maccabe on 18/04/2021.
//

import Foundation

class GameModel {
    
    var score: Int
    let fastJetModel: FastJetModel
        
    init() {
        score = 0
        fastJetModel = FastJetModel()
    }
    
    func play(move: Move) -> (isMoveCorrect: Bool, score: Int) {
 
        let result = fastJetModel.assignTextValueToNumber(number: score + 1)
        
        if move == result {
            score += 1
            return (true, score)
        }
        return (false, score)
    }
}
