//
//  Game.swift
//  FastJet-Game
//
//  Created by Gary Maccabe on 18/04/2021.
//

import Foundation

class FastJetModel {
    
    func dividedBy(number: Int, divisor: Int) -> Bool {
      return number % divisor == 0
    }
    
    func isDivisibleByThree(number: Int) -> Bool {
        return dividedBy(number: number, divisor: 3)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return dividedBy(number: number, divisor: 5)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return dividedBy(number: number, divisor: 15)
    }
    
    func assignTextValueToNumber(number: Int) -> Move {
        if isDivisibleByFifteen(number: number) {
            return Move.fastJet
        }
        else if isDivisibleByThree(number: number) {
            return Move.fast
        }
        else if isDivisibleByFive(number: number){
            return Move.jet
        }
        else {
            return Move.number
        }
    }
}
