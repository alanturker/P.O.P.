import Foundation

//MARK: - Protocols
protocol Creature {
    var name: String { get set }
    
    init(name: String)
}

protocol Strikable: Creature {
    func fight()
}

extension Strikable {
    func fight() {
        print("\(name) 👊🏻 fight")
    }
}

protocol Walking: Creature {
    func walk()
}

extension Walking {
    func walk() {
        print("\(name) 🚶🏻 walk")
    }
}

protocol Burning: Creature {
    func burn()
}

extension Burning {
    func burn() {
        print("\(name) 🔥 fire")
    }
}

protocol Flying: Creature {
    func fly()
}

extension Flying {
    func fly() {
        print("\(name) 🦅 fly")
    }
}
//MARK: - Classes
class LandCreature: Creature, Strikable, Walking {
    var name: String
    
    required init(name: String) {
        self.name = name
    }
}
struct HellCreature: Creature, Walking, Strikable, Burning {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
class SkyCreature: Creature, Strikable, Flying {
    var name: String
    
    required init(name: String) {
        self.name = name
    }
    
    func fight() {
        print("\(name) 🏹 fight")
    }
}
class DragonCreature: Creature, Walking, Strikable, Burning, Flying {
    var name: String
    
    required init(name: String) {
        self.name = name
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
