//
//  ViewController.swift
//  MCiseStartProject
//
//  Created by Anas Belkhadir on 01/06/2016.
//  Copyright © 2016 Anas Belkhadir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    enum RPS {
        case Paper
        case Rock
        case Scissors
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "The status", message: message, preferredStyle: .Alert)
        let alertAction = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        alert.addAction(alertAction)
        presentViewController(alert, animated: true, completion: nil)
    }
 
    
    func generateRandmlyNumber() -> Int {
        return Int(random() % 3)
    }
    
    func move(tag: Int) -> RPS? {
        switch tag {
        case 0:
            return .Paper
        case 1:
            return .Rock
        case 2:
            return .Scissors
        default:
            return nil
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func clickOnPaper(sender: UIButton) {
        let randomNumber = generateRandmlyNumber()
        let message = defineTheWinner(.Paper, computerChoice: move(randomNumber)!)
        showAlert(message)
    }
    
    @IBAction func clickOnRock(sender: UIButton) {
        let randomNumber = generateRandmlyNumber()
        let message = defineTheWinner(.Rock, computerChoice: move(randomNumber)!)
        showAlert(message)
    }
    
    @IBAction func clickOnScissors(sender: UIButton) {
        let randomNumber = generateRandmlyNumber()
        let message = defineTheWinner(.Scissors, computerChoice: move(randomNumber)!)
        showAlert(message)
    }
    
    
    func defineTheWinner(userChoice: RPS, computerChoice: RPS) -> String {
        // Take Choice of the computer and user and return :
        // Winner if the user win
        // Looser if the user loose
        // tie
        
        return ""
    }

    
    //    func informationAboutTheGame(userMove: RPS, computerMove: RPS) -> String {
    //        // This function take two moves and return detail information about the game
    //        // and return the information about the game  for example:
    //        // userMove = . Paper , computerMove = .Scissors is "Scissors cut paper"
    //        // .Paper, .Rock =  "Paper cover Rock"
    //        // .Paper, .Scissors = "Scissors cut paper"
    //        // .Rock, .Scissors = "Rock crushes scussors "
    //
    //        return ""
    //    }


}

