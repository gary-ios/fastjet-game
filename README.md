# Test Driven Devlopment in Swift

FastJet Game built using UIKit and Swift 5.


# How the Game Works
This is a take on the classic Fizzbuzz Kata using Swift.

User must tap the correct button to increment the scoreboard which starts at 0.

Fast = Number is divisible by 3 (e.g 6)

Jet = Number is divisible by 5 (e.g 10)

FastJet = Number is divisible by both 3 and 5 (e.g 15)

If a number in not divisible by these numbers the user needs to tap the scoreboard button to increment.

![Screenshot 2022-05-06 at 13 45 19](https://user-images.githubusercontent.com/82660495/167133884-39db2c8c-7e96-4e3b-8a7a-57536c1febff.png)

The following test cases have been developed:

# GameModelTests

test_gameScore_StartsAtZero()

test_gameScoreIncrements_onPlay()

test_whenFastIsPlayed_andScoreIsDivisibleByThree_moveIsCorrect()

test_whenFastIsPlayed_andScoreIsNotDivisibleByThree_moveIsIncorrect()

test_whenJetIsPlayed_andScoreIsDivisibleByFive_moveIsCorrect()

test_whenJetIsPlayed_andScoreIsNotDivisibleByFive_moveIsIncorrect()

test_whenFastJetIsPlayed_andScoreIsDivisibleByFifteen_withNoRemainder_moveIsCorrect()

test_whenFastJetIsPlayed_andScoreIsNotDivisibleByFifteen_moveIsIncorrect()

test_whenScoreIsNotDivisible_byThreeFiveOrFifteen_numberMoveIsCorrect()

test_whenScoreIsDivisibleByThree_numberMoveIsIncorrect()

test_whenTheWrongMoveIsPlayed_scoreDoesNotIncrement()

test_playReturns_valueForIsMoveCorrect()

test_playReturns_valueForScore()

# FastJetModelTests

test_whenNumberIsThree_andDivisorIsThree_resultEqualsTrue()

test_whenNumberIsOne_andDivisorIsThree_resultEqualsFalse()

test_whenNumberIsFive_andDivisorIsFive_resultEqualsTrue()

test_whenNumberIsOne_andDivisorIsFive_resultEqualsFalse()

test_whenNumberIsFifteen_andDivisorIsFifteen_resultEqualsTrue()

test_whenNumberIsOne_andDivisorIsFifteen_resultEqualsFalse()

test_whenNumberIsThree_resultEqualsFast()

test_whenNumberIsFive_resultEqualsJet()

test_whenNumberIsFifteen_resultEqualsFastJet()

test_whenNumberCantBeDivided_resultEqualsNumber()

# ViewControllerUnitTests

testMove1IncrementsScore()

testMove2IncrementScore()

testHasAGame()

testFastIncrementScore()

testJetIncrementScore()

testFastJetIncrementScore()

testOnWrongMoveScoreNotIncremented()

# ViewControllerUITests

test_whenNumberButtonIsTapped_theFirstTime_scoreIncrementsToOne()

test_whenNumberButtonIsTapped_theSecondTime_scoreIncrementsToTwo()

test_whenFastButtonIsTapped_scoreIncrementsToThree()

test_whenJetButtonIsTapped_scoreIncrementsToFive()

test_whenFastJetButtonIsTapped_scoreIncrementsToFifteen()
