import UIKit

struct Card {
    var color: String
    var roll: Double
}

class Deck {
    var cards: [Card]
    init(cards: [Card]){
        self.cards = cards
        for i in 1...30 {
            let e = Double(arc4random_uniform(6))
            
            if(e == 1 || e == 2){
                self.cards.append(Card(color: "Blue", roll: e))
            }
            
            else if(e == 3 || e == 4){
                self.cards.append(Card(color: "Red", roll: e))
            }
            
            else if(e == 4 || e == 5 || i == 6){
                self.cards.append(Card(color: "Green", roll: e))
            }
            
        }
    }
    
    func Deal() -> Card{
        let top = self.cards[0]
        self.cards.remove(at: 0)
        return top
    }
    
    func isEmpty()-> Bool{
        var test = false
        if(self.cards.isEmpty){
            test = true
        }
        return test
    }

    func Shuffle() -> Int{
        let count = UInt32(self.cards.count)
        let random = Int(arc4random_uniform(count))

        for i in 0...count{
            let random = Int(arc4random_uniform(count))
            if( random != i){
                print(self.cards[Int(i)])
            }
        }

        return random
        
    }

}

class Player {
    var name: String
    var hand: [Card]
    init(name: String, hand: [Card]) {
        self.name = name
        self.hand = hand
    }

    func Draw(Deck: (Deck)) -> Card {
        let card = Deck.Deal()
        self.hand.append(card)
        return card
    }

    func rollDice() -> Int {
        let randnum = Int(arc4random_uniform(6))
        return randnum
    }
}



var mydeck: Deck = Deck(cards: [])
print(mydeck.cards)
print(mydeck.cards.count)

