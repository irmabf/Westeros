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
    
    var starkHouse: House!
    var starkSigil: Sigil!
    var ned: Person!
    var arya: Person!
    
    override func setUp() {
        super.setUp()
        starkSigil = Sigil(image: UIImage(), description: "Logo Huargo")
        starkHouse = House(name: "Stark", sigil: starkSigil, words: "Winter is coming")
        ned = Person(name: "Eddard", alias: "Ned", house: starkHouse)
        arya = Person(name: "Arya", house: starkHouse)
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCharacterExistence()  {
        XCTAssertNotNil(ned)
        XCTAssertNotNil(arya)
    }
    
    func testFullName() {
        XCTAssertEqual(ned.fullName, "Eddard Stark")
        XCTAssertEqual(arya.fullName, "Arya Stark")
    }
    
    
}
