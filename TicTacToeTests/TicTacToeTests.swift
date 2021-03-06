//
//  TicTacToeTests.swift
//  TicTacToeTests
//
//  Created by 2020-DEV-048 on 3/2/20.
//  Copyright © 2020 2020. All rights reserved.
//

import XCTest

class TicTacToeTests: XCTestCase {

    let ticTacToeLogic = TicTacToeLogic()
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    //Verifies if Player 1 is the Active Player
    func testPlayer1IsFirst() {
        let playerSign = ticTacToeLogic.checkActivePlayer()
        XCTAssertEqual(playerSign, 1, "ActivePlayer is Player 1 : X")
    }
    
    //Verifies if cell already selected; prevents re-selection
    func testPlayerSelectedCell() {
       let cellValue = ticTacToeLogic.checkAndUpdateCellState(position: 2)
        XCTAssertEqual(cellValue, true, "Player Already selected Cell")
    }
    
    //Verifies if player is toggled on selection
    func testPlayerIsToogled() {
        let currentPlayer = 1
        let newCurrentPlayer = ticTacToeLogic.tooglePlayer(player: currentPlayer)
        XCTAssertNotEqual(currentPlayer, newCurrentPlayer, "Player Toogled")
    }
    
    //Verifies if player is toggled on selection
    func testIfPlayerWon() {
        let player1 = 1
        ticTacToeLogic.setDummyGame(state:1)
        let winner = ticTacToeLogic.checkIfPlayerWon()
        XCTAssertEqual(winner, player1, "Player 1 Won")
    }
    
    //Verifies if Game is a Draw
    func testIfGameIsDraw() {
        ticTacToeLogic.setDummyGame(state:0)
        let isDraw = ticTacToeLogic.checkIfGameDraw()
        XCTAssertEqual(isDraw, true, "Game is Draw")
    }
    
    //Verifies if Game is stopped
    func testIfGameStopped() {
        let gameStopped = ticTacToeLogic.checkIfGameStopped()
        XCTAssertEqual(gameStopped, false, "Game Stopped")
    }

}
