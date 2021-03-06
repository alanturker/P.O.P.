import Foundation

//MARK: - Classes
class Creature {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func fight() {
        print("ππ» fight")
    }
    
    func walk() {
        print("πΆπ» walk")
    }
}

class LandCreature: Creature {}

class HellCreature: Creature {
    
    func burn() {
        print("π₯ fire")
    }
}

class SkyCreature: Creature {
    
    func fly() {
        print("π¦ fly")
    }
}

//MARK: - Instances
let landCreature = LandCreature(name: "Terrestrial")
let hellCreature = HellCreature(name: "Cerberus")
let skyCreature = SkyCreature(name: "Harpy")


skyCreature.walk() // ???????
