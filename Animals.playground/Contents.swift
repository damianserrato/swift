import UIKit

class Animal {
    var name : String
    var health = 100
    init(name: String) {
        self.name = name
    }
    
    func displayHealth() {
        print(self.name + "'s running speed is \(self.health)")
    }
}

class Cat: Animal {
    override init(name: String) {
        super.init(name: name)
        self.health = 150
    }
    
    func growl(){
        print("RAWWWRRR")
    }
    
    func run() {
        print("Running")
        self.health -= 10
    }
}

class Cheetah: Cat {
    override func run(){
        if(self.health >= 50 && self.health <= 200){
        print("Running Fast")
        self.health -= 50
        }
        else {
            print(self.name + " needs a break")
        }
    }

    func sleep() {
        if(self.health <= 200){
        self.health += 50
        }
    }
}

class Lion: Cat {
    override init(name: String) {
        super.init(name: name)
        self.health = 200
    }
    override func growl() {
        print("ROAR!! I am the King of the Jungle!!!!")
    }
}


var mycheetah = Cheetah(name: "Cheetara")
mycheetah.run()
mycheetah.run()
mycheetah.run()
mycheetah.run()
mycheetah.displayHealth()

var mylion = Lion(name: "Liono")
mylion.run()
mylion.run()
mylion.run()
mylion.growl()
