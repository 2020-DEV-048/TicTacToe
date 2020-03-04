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

    func testPlayer1IsFirst() {
        let playerSign = ticTacToeLogic.checkActivePlayer()
        XCTAssertEqual(playerSign, 1, "ActivePlayer is Player 1 : X")
    }

}
