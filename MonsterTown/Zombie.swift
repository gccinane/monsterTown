//
//  Zombie.swift
//  MonsterTown
//
//  Created by Jose Cinane on 08/02/21.
//

import Foundation

class Zombie: Monster {
    static let isTerrifying = true
    var walksWithLimp: Bool
    private(set) var isFallingApart: Bool
    
    class override var spookyNoise: String {
        return "Brains..."
    }
        
    init(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String) {
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName)
    }
    
    convenience init(limp: Bool, fallingApart: Bool) {
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")
            if walksWithLimp {
                print("This zombie has a bad knee.")
            }
    }
    
    required init(town: Town?, monsterName: String) {
        walksWithLimp = false
        isFallingApart = false
        super.init(town: town, monsterName: monsterName)
    }
    
    deinit {
        print("Zombie \(name) is no longer with us")
    }
    
    
    func regenerate() {
        walksWithLimp = false
    }

    override func terrorizeTown() {
        if !isFallingApart {
            town?.changePopulation(by: -10)
        }
      
        super.terrorizeTown()
        regenerate()
    }
}
