//
//  Zombie.swift
//  MonsterTown
//
//  Created by Jose Cinane on 08/02/21.
//

import Foundation

class Zombie: Monster {
    static let isTerrifying = true
    class override var spookyNoise: String {
        return "Brains..."
    }
    private(set) var isFallingApart = false
    var walksWithLimp = true
    
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
