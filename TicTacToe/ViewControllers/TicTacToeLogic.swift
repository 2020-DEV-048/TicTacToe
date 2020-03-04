//
//  TicTacToeLogic.swift
//  TicTacToe
//
//  Created by 2020-DEV-048 on 3/4/20.
//  Copyright © 2020 2020. All rights reserved.
//

//  DESCRIPTION: This class will contain all the game logic that are used in application

import Foundation

class TicTacToeLogic {
    var currentPlayer = 1
    
    func setActivePlayer(_player: Int) {
        currentPlayer = _player
    }
    
    //Prints the Active Player
    func checkActivePlayer() -> Int{
        if currentPlayer == 1{
            print("Active Player: Player 1")
        }
        else if currentPlayer == 2{
            print("Active Player: Player 2")
        }
        else{
            print("Active Player value is incorrect")
        }
        return currentPlayer
    }
}
