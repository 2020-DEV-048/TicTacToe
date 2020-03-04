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
    var cellState = [0,0,0,0,0,0,0,0,0] // Maintains the cell state - 0: Not Selected; 1: Player 1; 2: Player 2
    
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
    
    func checkAndUpdateCellState(position: Int)->Bool{
        if cellState[position] == 0 {
            cellState[position] = currentPlayer
            return true
        }
        return false
    }
    
    func tooglePlayer(player: Int)->Int{
        if currentPlayer == 1 {
            currentPlayer = 2
        }
        else{
            currentPlayer = 1
        }
        return currentPlayer
    }
}
