//
//  House.swift
//  Westeros
//
//  Created by Irma Blanco on 14/02/2018.
//  Copyright © 2018 Irma Blanco. All rights reserved.
//

import UIKit


typealias Words = String
typealias Members = Set<Person>

// MARK: - House
final class House {
    let name: String
    let sigil: Sigil
    let words: Words
    private var _members: Members
    
    init(name: String, sigil: Sigil, words: Words) {
        self.name = name
        self.sigil = sigil
        self.words = words
        _members = Members()
    }
}

extension House {
    var count: Int{
        return _members.count
    }
    func add(person: Person) {
        guard person.house.name == self.name else{
            return
        }
       _members.insert(person)
    }
}

// MARK: - Sigil
final class Sigil {
    let image: UIImage
    let description: String
    
    init(image: UIImage, description: String) {
        self.image = image
        self.description = description
    }
}
