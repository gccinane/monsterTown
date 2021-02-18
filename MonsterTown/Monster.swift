//
//  Monster.swift
//  MonsterTown
//
//  Created by Jose Cinane on 08/02/21.
//

import Foundation

class Monster {
    class var spookyNoise: String {
        return "Grrr"
    }
    var town: Town?
    var name: String
    
    required init(town: Town?, monsterName: String) {
        self.town = town
        name = monsterName
    }
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }
    
    
    
    //final keyword is used to prevent overriding in all subclasses of monster class
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet")
        }
    }
}
