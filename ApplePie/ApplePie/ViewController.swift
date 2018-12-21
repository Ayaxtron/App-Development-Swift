//
//  ViewController.swift
//  ApplePie
//
//  Created by Ayax Alexis Casarrubias Rodríguez on 19/12/18.
//  Copyright © 2018 Ayax Alexis Casarrubias Rodríguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    var listOfWords : [String] = ["water", "fire", "earth", "wind"]
    let incorrectMovesAllowed = 7
    var totalWins = 0 {
        didSet{
            newRound()
        }
    }
    var totalLoses = 0 {
        didSet{
            newRound()
        }
    }
    var currentGame : Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.title(for: .normal)!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
    
    func updateGameState(){
        if currentGame.incorrectMovesRemaining == 0{
            totalLoses += 1
        }else if currentGame.word == currentGame.formattedWord{
            totalWins += 1
        }else{
            updateUI()
        }
    }
    
    func newRound(){
    
        if !listOfWords.isEmpty{
            
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesRemaining:
            incorrectMovesAllowed, guessedLetters: [])
            enableLetterButtons(true)
            updateUI()
        }else{
            enableLetterButtons(false)
        }
    }
    
    func enableLetterButtons(_ enable : Bool){
        for buttons in letterButtons{
            buttons.isEnabled = enable
        }
    }
    
    func updateUI(){
        var letters = [String]()
        for letter in currentGame.formattedWord.characters{
            letters.append(String(letter))
        }
        let wordWithSpacing = letters.joined(separator: " ")
        scoreLabel.text = "Wins: \(totalWins), Loses: \(totalLoses)"
        treeImageView.image = UIImage(named : "Tree \(currentGame.incorrectMovesRemaining)")
        correctWordLabel.text = wordWithSpacing
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

