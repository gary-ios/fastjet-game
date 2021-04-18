//
//  ViewControllerUITests.swift
//  FastJet-GameUITests
//
//  Created by Gary Maccabe on 18/04/2021.
//

import XCTest

class ViewControllerUITests: XCTestCase {
    
    override func setUp() {
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    func test_whenNumberButtonIsTapped_theFirstTime_scoreIncrementsToOne() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }
    
    func test_whenNumberButtonIsTapped_theSecondTime_scoreIncrementsToTwo() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
    }
    
    func test_whenFastButtonIsTapped_scoreIncrementsToThree() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fastButton = app.buttons["fastButton"]
        
        numberButton.tap()
        numberButton.tap()
        fastButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "3")
    }

    func test_whenJetButtonIsTapped_scoreIncrementsToFive() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fastButton = app.buttons["fastButton"]
        let jetButton = app.buttons["jetButton"]

        numberButton.tap()
        numberButton.tap()
        fastButton.tap()
        numberButton.tap()
        jetButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "5")
    }

    func test_whenFastJetButtonIsTapped_scoreIncrementsToFifteen() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fastJetButton = app.buttons["fastJetButton"]

        playToFourteenHelper()

        fastJetButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "15")
    }

    func playToFourteenHelper() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fastButton = app.buttons["fastButton"]
        let jetButton = app.buttons["jetButton"]

        numberButton.tap()
        numberButton.tap()
        fastButton.tap()
        numberButton.tap()
        jetButton.tap()
        fastButton.tap()
        numberButton.tap()
        numberButton.tap()
        fastButton.tap()
        jetButton.tap()
        numberButton.tap()
        fastButton.tap()
        numberButton.tap()
        numberButton.tap()
    }
}
