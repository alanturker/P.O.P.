import Foundation

//MARK: - Classes
class Creature {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    func walk() {
        print("🚶🏻 walk")
    }
    
    func fight() {
        print("👊🏻 fight")
    }
    
}

class LandCreature: Creature {}

class HellCreature: Creature {

    func burn() {
        print("🔥 fire")
    }
}

//MARK: - Instances
let landCreature = LandCreature(name: "Terrestrial")
let hellCreature = HellCreature(name: "Cerberus")


landCreature.walk()
landCreature.fight()


hellCreature.walk()
hellCreature.fight()
hellCreature.burn()
