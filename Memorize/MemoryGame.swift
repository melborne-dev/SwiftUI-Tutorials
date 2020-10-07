//
//  MemoryGame.swift
//  Memorize
//
//  Created by Melborne on 06/10/20.
//

import Foundation

struct MemoryGame<CardContent>{
    var cards: Array<Card>
    
    func chooseCard(card: Card){
        print("card chosen:\(card)")
    }
    struct Card : Identifiable{
        var isFacedUp: Bool = true
        var isMatchedUp: Bool = false
        var content: CardContent
        var id : Int
        
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards{
            let content = cardContentFactory(pairIndex)
            cards.append(Card( content: content, id: pairIndex * 2))
            cards.append(Card(content: content,id: pairIndex * 2 + 1))
        }
    }
}
