//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Edmond Phillips on 12/5/21.
//

import Foundation

class EmojiMemoryGame {
    private var model: Memory<String> = MemoryGame<String>()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
