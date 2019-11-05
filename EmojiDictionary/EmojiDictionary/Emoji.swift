//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Ayax Alexis Casarrubias Rodríguez on 04/11/19.
//  Copyright © 2019 Ayax Alexis. All rights reserved.
//

import UIKit


class Emoji {
    var symbol : String
    var name : String
    var description : String
    var usage : String
    
    init(symbol: String, name: String, description: String, usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
}
