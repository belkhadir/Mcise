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
        let message :String
        switch (userChoice,computerChoice){
        case let (x,y) where x==y :
            message = "Tied!"
        case (.Paper, .Rock), (.Rock, .Scissors), (.Scissors, .Paper):
            message = "Winer"
        default:
            message = "looser"
        }
        return message
    }

    
    func informationAboutTheGame(userMove: RPS, computerMove: RPS) -> String {
        let information:String
        switch (userMove, computerMove){
        case (.Paper, .Rock), (.Rock,.Paper):
            information = "Paper cover Rock"
        case (.Paper, .Scissors),(.Scissors, .Paper) :
            information = "Scissors cut paper"
        case (.Rock, .Scissors), (.Scissors, .Rock):
            information = "Rock crushes scussors "
        default :
            information = ""
            
        }
        return information
    }


}

