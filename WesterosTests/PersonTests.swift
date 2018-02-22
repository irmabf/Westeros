//
//  CharacterTests.swift
//  WesterosTests
//
//  Created by Irma Blanco on 14/02/2018.
//  Copyright © 2018 Irma Blanco. All rights reserved.
//

import XCTest
@testable import Westeros
class PersonTests: XCTestCase {
    
    
    var starkSigil: Sigil!
    var lannisterSigil: Sigil!
    
    var starkHouse: House!
    var lannisterHouse: House!
    
    var robb: Person!
    var arya: Person!
    var tyrion: Person!
    
    
    
    override func setUp() {
        super.setUp()
        starkSigil = Sigil(image: UIImage(), description: "Direwolf")
        lannisterSigil = Sigil(image: UIImage(), description: "Rampant Lion")
        
        starkHouse = House(name: "Stark", sigil: starkSigil, words: "Winter is coming")
        lannisterHouse = House(name: "Lannister", sigil: lannisterSigil, words: "Here me roar!")
        
        robb = Person(name: "Robb", alias: "The Young Wolf", house: starkHouse)
        arya = Person(name: "Arya", house: starkHouse)
        
        tyrion = Person(name: "Tyrion", alias: "The Imp", house: lannisterHouse)
        
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCharacterExistence()  {
        XCTAssertNotNil(robb)
        XCTAssertNotNil(arya)
    }
    
    func testFullName() {
        XCTAssertEqual(robb.fullName, "Robb Stark")
        XCTAssertEqual(arya.fullName, "Arya Stark")
    }
    
    func testPersonEquality(){
        //Identidad
        XCTAssertEqual(tyrion, tyrion)
        //Igualdad
        let imp = Person(name: "Tyrion", alias: "The Imp", house: lannisterHouse)
        XCTAssertEqual(imp, tyrion)
        //Desigualdad
        XCTAssertNotEqual(tyrion, arya)
    }
    
    
}
