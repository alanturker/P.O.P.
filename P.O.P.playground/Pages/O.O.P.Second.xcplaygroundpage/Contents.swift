import Foundation

//MARK: - Classes
class Creature {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func fight() {
        print("👊🏻 fight")
    }
    
    func walk() {
        print("🚶🏻 walk")
    }
}

class LandCreature: Creature {}

class HellCreature: Creature {
    
    func burn() {
        print("🔥 fire")
    }
}

class SkyCreature: Creature {
    
    func fly() {
        print("🦅 fly")
    }
}

//MARK: - Instances
let landCreature = LandCreature(name: "Terrestrial")
let hellCreature = HellCreature(name: "Cerberus")
let skyCreature = SkyCreature(name: "Harpy")


skyCreature.walk() // ???????
