//
//  RootViewController.swift
//  TicTacToe
//
//  Created by 2020-DEV-048 on 3/2/20.
//  Copyright © 2020 2020. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    let ticTacToeLogic = TicTacToeLogic()
    
    //IBOutlet for the indicative message
    @IBOutlet weak var playerIndicator: UIImageView!
    @IBOutlet weak var playerMessage: UILabel!
    
    //Action on click of board cell
    @IBAction func cellClicked(_ sender: UIButton) {
        let position = sender.tag
        var cellImage = UIImage(named:"")
        if ticTacToeLogic.checkAndUpdateCellState(position: position) {
            if activePlayer == 1{
                cellImage = UIImage(named:"XIcon")
                playerIndicator.image = UIImage(named:"OIcon")
                playerMessage.text = AppConstants.player2Turn
            }
            else{
                cellImage = UIImage(named:"OIcon")
                playerIndicator.image = UIImage(named:"XIcon")
                playerMessage.text = AppConstants.player1Turn
            }
            sender.setImage(cellImage!, for: .normal)
            activePlayer = ticTacToeLogic.tooglePlayer(player: activePlayer)
        }
    }
    
    //Action on click of Reset button
    @IBAction func resetClicked(_ sender: Any) {
        
    }
    
   var activePlayer = 1 //activePlayer = 1 for Player 1 ; activePlayer = 2 for Player 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startPlaying()
        
    }
}

// MARK: Private methods
private extension RootViewController {
    func startPlaying() {
        print("Start Playing")
        activePlayer = 1
        ticTacToeLogic.setActivePlayer(_player: activePlayer)
        let next = ticTacToeLogic.checkActivePlayer()
        print (next)
    }
}

