//
//  File.swift
//  Westeros
//
//  Created by Irma Blanco on 28/02/2018.
//  Copyright © 2018 Irma Blanco. All rights reserved.
//

import Foundation
/*Primero necesito una clase repository
 Dentro de esta clase necesito una variable estatica local, que sera del tipo LocalFactory, por tanto necesito la clase LocalFactory que quiero que se conforme
 al protocolo housefactory
 */
final class Repository {
    static let local = LocalFactory()
}

protocol HouseFactory {
    var houses:  [House] { get }
}

final class LocalFactory: HouseFactory {
    var houses: [House] {
        //Houses creation
        let starkSigil = Sigil(image: #imageLiteral(resourceName: "codeIsComing.png"), description: "Direwolf")
        let lannisterSigil = Sigil(image: #imageLiteral(resourceName: "lannister.jpg"), description: "Rampant Lion")
        
        let starkHouse = House(name: "Stark", sigil: starkSigil, words: "Winter is coming")
        let lannisterHouse = House(name: "Lannister", sigil: lannisterSigil, words: "Here me roar!")
        
        let robb = Person(name: "Robb", alias: "The Young Wolf", house: starkHouse)
        let arya = Person(name: "Arya", house: starkHouse)
        let tyrion = Person(name: "Tyrion", alias: "The Imp", house: lannisterHouse)
        
        //Add characters to houses// Mark: - Title
        starkHouse.add(person: arya)
        starkHouse.add(person: robb)
        lannisterHouse.add(person: tyrion)
        
        return [starkHouse, lannisterHouse]
        
    }
}
