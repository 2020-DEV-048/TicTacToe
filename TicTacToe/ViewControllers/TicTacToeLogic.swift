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
    var cellState = [0,0,0,0,0,0,0,0,0] // Maintains the cell state - 0: Empty; 1: Player 1; 2: Player 2
    var gameStopped = false  // Check game is active or stopped (Won or Draw)
    
    //Game Winning Combinations
    let winningCombinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8],//3 Rows
                              [0, 3, 6], [1, 4, 7], [2, 5, 8], //3 Columns
                              [0, 4, 8], [2, 4, 6]]            //2 Diagonals
    
    //Sets Active Player
    func setActivePlayer(_player: Int) {
        cellState = [0,0,0,0,0,0,0,0,0]
        currentPlayer = _player
        gameStopped = false
    }
    
    //Sets Dummy Value for Test
    func setDummyGame(state: Int) {
        if (state==1){
            cellState = [0,2,0,1,1,1,0,2,0]
        }else{
            cellState = [1,1,2,2,1,1,1,2,2]
        }
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
    
    // Checks and updates the cell state
    func checkAndUpdateCellState(position: Int)->Bool{
        if cellState[position-1] == 0 {
            cellState[position-1] = currentPlayer
            return true
        }
        return false
    }
    
    //Toogles Player
    func tooglePlayer(player: Int)->Int{
        if currentPlayer == 1 {
            currentPlayer = 2
        }
        else{
            currentPlayer = 1
        }
        return currentPlayer
    }
    
    //Returns whether Game is Active or Stopped
    func checkIfGameStopped()->Bool{
        return gameStopped
    }
    
    //Checks and updates whether the player won
    func checkIfPlayerWon() -> Int{
        var winner = 0
        for set in winningCombinations {
            if (cellState[set[0]] != 0 && cellState[set[0]] == cellState[set[1]] && cellState[set[1]] == cellState[set[2]] ) {
                gameStopped = true
                winner = cellState[set[0]]
            }
        }
        return winner
    }
    
    //Checks and updates whether the game is draw
    func checkIfGameDraw() -> Bool{
        for cell in cellState{
            if cell == 0{
                return false
            }
        }
        return true
    }
}
