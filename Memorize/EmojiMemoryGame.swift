//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Melborne on 06/10/20.
//

import Foundation



class EmojiMemoryGame{
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
   static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃","🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: 3) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    
    //MARK: - Access y=to the model
    var Cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    
    
    //MARK: - Intent(s)
    
    func chooseCard(card: MemoryGame<String>.Card){
        model.chooseCard(card: card)
    }
}
