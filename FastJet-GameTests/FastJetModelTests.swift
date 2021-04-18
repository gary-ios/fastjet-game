//
//  FastJetModelTests.swift
//  FastJet-GameTests
//
//  Created by Gary Maccabe on 18/04/2021.
//

import XCTest
@testable import FastJet_Game

class FastJetModelTests: XCTestCase {
    
    let fastJetModel = FastJetModel()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_whenNumberIsThree_andDivisorIsThree_resultEqualsTrue() {
        let result = fastJetModel.isDivisibleByThree(number: 3)
        XCTAssertTrue(result)
    }
    
    func test_whenNumberIsOne_andDivisorIsThree_resultEqualsFalse() {
        let result = fastJetModel.isDivisibleByThree(number: 1)
        XCTAssertFalse(result)
    }
    
    func test_whenNumberIsFive_andDivisorIsFive_resultEqualsTrue() {
        let result = fastJetModel.isDivisibleByFive(number: 5)
        XCTAssertTrue(result)
    }
    
    func test_whenNumberIsOne_andDivisorIsFive_resultEqualsFalse() {
        let result = fastJetModel.isDivisibleByFive(number: 1)
        XCTAssertFalse(result)
    }
    
    func test_whenNumberIsFifteen_andDivisorIsFifteen_resultEqualsTrue() {
        let result = fastJetModel.isDivisibleByFive(number: 5)
        XCTAssertTrue(result)
    }
    
    func test_whenNumberIsOne_andDivisorIsFifteen_resultEqualsFalse() {
        let result = fastJetModel.isDivisibleByFive(number: 1)
        XCTAssertFalse(result)
    }
    
    func test_whenNumberIsThree_resultEqualsFast() {
        let result = fastJetModel.assignTextValueToNumber(number: 3)
        XCTAssertEqual(result, Move.fast)
    }
    
    func test_whenNumberIsFive_resultEqualsJet() {
        let result = fastJetModel.assignTextValueToNumber(number: 5)
        XCTAssertEqual(result, Move.jet)
    }

    func test_whenNumberIsFifteen_resultEqualsFastJet() {
        let result = fastJetModel.assignTextValueToNumber(number: 15)
        XCTAssertEqual(result, Move.fastJet)
    }
    
    func test_whenNumberCantBeDivided_resultEqualsNumber() {
        let result = fastJetModel.assignTextValueToNumber(number: 1)
        XCTAssertEqual(result, Move.number)
    }
}
