//
//  GameModelTests.swift
//  FastJet-GameTests
//
//  Created by Gary Maccabe on 18/04/2021.
//

import XCTest
@testable import FastJet_Game

class GameModelTests: XCTestCase {
    
    let game = GameModel()

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func test_gameScore_StartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }

    func test_gameScoreIncrements_onPlay() {
        _ = game.play(move: Move.number)
        XCTAssertTrue(game.score == 1)
    }

    func test_whenFastIsPlayed_andScoreIsDivisibleByThree_moveIsCorrect() {
        game.score = 2
        let response = game.play(move: Move.fast)
        let result = response.isMoveCorrect
        XCTAssertEqual(result, true)
    }

    func test_whenFastIsPlayed_andScoreIsNotDivisibleByThree_moveIsIncorrect() {
        game.score = 1
        let response = game.play(move: Move.fast)
        let result = response.isMoveCorrect
        XCTAssertEqual(result, false)
    }

    func test_whenJetIsPlayed_andScoreIsDivisibleByFive_moveIsCorrect() {
        game.score = 4
        let response = game.play(move: Move.jet)
        let result = response.isMoveCorrect
        XCTAssertEqual(result, true)
    }

    func test_whenJetIsPlayed_andScoreIsNotDivisibleByFive_moveIsIncorrect() {
        game.score = 1
        let response = game.play(move: Move.jet)
        let result = response.isMoveCorrect
        XCTAssertEqual(result, false)
    }

    func test_whenFastJetIsPlayed_andScoreIsDivisibleByFifteen_withNoRemainder_moveIsCorrect() {
        game.score = 14
        let response = game.play(move: Move.fastJet)
        let result = response.isMoveCorrect
        XCTAssertEqual(result, true)
    }

    func test_whenFastJetIsPlayed_andScoreIsNotDivisibleByFifteen_moveIsIncorrect() {
        game.score = 1
        let response = game.play(move: Move.fastJet)
        let result = response.isMoveCorrect
        XCTAssertEqual(result, false)
    }

    func test_whenScoreIsNotDivisible_byThreeFiveOrFifteen_numberMoveIsCorrect() {
        game.score = 1
        let response = game.play(move: Move.number)
        let result = response.isMoveCorrect
        XCTAssertEqual(result, true)
    }

    func test_whenScoreIsDivisibleByThree_numberMoveIsIncorrect() {
        game.score = 2
        let response = game.play(move: Move.number)
        let result = response.isMoveCorrect
        XCTAssertEqual(result, false)
    }

    func test_whenTheWrongMoveIsPlayed_scoreDoesNotIncrement() {
        game.score = 1
        _ = game.play(move: Move.fast)
        XCTAssertEqual(game.score, 1)
    }

    func test_playReturns_valueForIsMoveCorrect() {
        let response = game.play(move: Move.number)
        XCTAssertNotNil(response.isMoveCorrect)
    }

    func test_playReturns_valueForScore() {
        let response = game.play(move: Move.number)
        XCTAssertNotNil(response.score)
    }

}
