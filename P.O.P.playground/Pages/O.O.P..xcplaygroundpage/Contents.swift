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
}

class LandCreature: Creature {
    
    func walk() {
        print("πΆπ» walk")
    }
}

class HellCreature: Creature {
    func walk() {
        print("πΆπ» walk")
    }
    
    func burn() {
        print("π₯ fire")
    }
}

class SkyCreature: Creature {
    func fly() {
        print("π¦ fly")
    }
}

class DragonCreature: Creature {
    func walk() {
        print("πΆπ» walk")
    }
    
    func burn() {
        print("π₯ fire")
    }
    
    func fly() {
        print("π¦ fly")
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
