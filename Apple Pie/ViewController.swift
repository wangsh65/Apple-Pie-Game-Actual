//
//  ViewController.swift
//  Apple Pie
//
//  Created by Demetri Orlando on 2/12/23
//

import UIKit

var listOfWords = ["pirate", "swift", "glorious", "light", "bug", "program"]
let incorrectMovesAllowed = 7
var totalWins = 0
var totalLosses = 0

class ViewController: UIViewController {

    @IBOutlet var treeImageView: UIImageView!
    
    @IBOutlet var correctWordLabel: UILabel!
    
    @IBOutlet var scoreLabel: UILabel!
   
    @IBOutlet var letterButtons: [UIButton]!
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    
    var currentGame: Game!
    
    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed)
        updateUI()
        }
    
    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }

    }




