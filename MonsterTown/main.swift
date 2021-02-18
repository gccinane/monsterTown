//
//  main.swift
//  MonsterTown
//
//  Created by Jose Cinane on 08/02/21.
//

import Foundation

var myTown = Town(population: 0, stoplights: 6)
myTown?.printDescription()
let myTownSize = myTown?.townSize
myTown?.changePopulation(by: 100_000_000)
print("Size: \(String(describing: myTown?.townSize)); population: \(String(describing: myTown?.population))")


var fredTheZombie: Zombie? = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Fred")
fredTheZombie?.town = myTown
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printDescription()

var convenientZombie = Zombie(limp: true, fallingApart: false)

print("Victim pool: \(String(describing: fredTheZombie?.victimPool))")
fredTheZombie?.victimPool = 500
print("Victim pool: \(String(describing: fredTheZombie?.victimPool))")
print(Zombie.spookyNoise)

if Zombie.isTerrifying {
    print("Run away!")
}

fredTheZombie = nil






