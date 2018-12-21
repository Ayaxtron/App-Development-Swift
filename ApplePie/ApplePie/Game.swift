//
//  Game.swift
//  ApplePie
//
//  Created by Ayax Alexis Casarrubias Rodríguez on 20/12/18.
//  Copyright © 2018 Ayax Alexis Casarrubias Rodríguez. All rights reserved.
//

import Foundation

struct Game {
    var word : String
    var incorrectMovesRemaining : Int
    var guessedLetters: [Character]
    
    mutating func playerGuessed(letter : Character){
        guessedLetters.append(letter)
        if !word.characters.contains(letter){
            incorrectMovesRemaining -= 1
        }
        
    }
    
    var formattedWord : String {
        var guessedWord = ""
        for letter in word.characters{
            if guessedLetters.contains(letter){
                guessedWord += "\(letter)"
            }else{
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    
}


