//
//  ViewControllerUnitTests.swift
//  FastJet-GameTests
//
//  Created by Gary Maccabe on 18/04/2021.
//

import XCTest
@testable import FastJet_Game

class ViewControllerUnitTests: XCTestCase {
    
    var viewController : ViewController!

    override func setUp() {
        super.setUp()

        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = (storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController)
        
        viewController.loadViewIfNeeded()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testMove1IncrementsScore() {
        viewController.play(move: Move.number)
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 1)
    }

    func testMove2IncrementScore() {
        viewController.play(move: Move.number)
        viewController.play(move: Move.number)
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 2)
    }

    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }

    func testFizzIncrementScore() {
        viewController.game?.score = 2
        viewController.play(move: Move.fast)
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 3)
    }

    func testBuzzIncrementScore() {
        viewController.game?.score = 4
        viewController.play(move: Move.jet)
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 5)
    }

    func testFizzBuzzIncrementScore() {
        viewController.game?.score = 14
        viewController.play(move: Move.fastJet)
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 15)
    }

    func testOnWrongMoveScoreNotIncremented() {
        viewController.play(move: Move.fast)
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 0)
    }
}
