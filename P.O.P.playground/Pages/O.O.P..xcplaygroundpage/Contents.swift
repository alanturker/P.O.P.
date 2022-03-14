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
}

class LandCreature: Creature {
    
    func walk() {
        print("🚶🏻 walk")
    }
}

class HellCreature: Creature {
    func walk() {
        print("🚶🏻 walk")
    }
    
    func burn() {
        print("🔥 fire")
    }
}

class SkyCreature: Creature {
    func fly() {
        print("🦅 fly")
    }
}

class DragonCreature: Creature {
    func walk() {
        print("🚶🏻 walk")
    }
    
    func burn() {
        print("🔥 fire")
    }
    
    func fly() {
        print("🦅 fly")
    }
}

//MARK: - Instances
let landCreature = LandCreature(name: "Terrestrial")
let hellCreature = HellCreature(name: "Cerberus")
let skyCreature = SkyCreature(name: "Harpy")
let dragonCreature = DragonCreature(name: "Wyvern")

//MARK: - Functions
print("\n __\(landCreature.name)__ \n")
landCreature.walk()
landCreature.fight()
print("\n __\(hellCreature.name)__ \n")
hellCreature.walk()
hellCreature.fight()
hellCreature.burn()
print("\n __\(skyCreature.name)__ \n")
skyCreature.fly()
skyCreature.fight()
print("\n __\(dragonCreature.name)__ \n")
dragonCreature.walk()
dragonCreature.fly()
dragonCreature.fight()
dragonCreature.burn()
