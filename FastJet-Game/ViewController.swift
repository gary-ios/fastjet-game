//
//  ViewController.swift
//  FastJet-Game
//
//  Created by Gary Maccabe on 18/04/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var game: GameModel?
    
    var gameScore: Int? {
        didSet {
            guard let unwrappedScore = gameScore else {
                print("Game is nil")
                return
            }
            numberButton.setTitle("\(unwrappedScore)", for: .normal)
        }
    }
    
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fastButton: UIButton!
    @IBOutlet weak var jetButton: UIButton!
    @IBOutlet weak var fastJetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = GameModel()
        
        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        gameScore = checkedGame.score
    }
    
    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender {
                case numberButton:
                    play(move: .number)
                case fastButton:
                    play(move: .fast)
                case jetButton:
                    play(move: .jet)
                case fastJetButton:
                    play(move: .fastJet)
                default:
                    print("Invalid selection")
                }
    }
}
