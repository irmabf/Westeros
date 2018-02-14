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
    
    override func setUp() {
        super.setUp()
        starkSigil = Sigil(image: UIImage(), description: "Logo Huargo")
        starkHouse = House(name: "Stark", sigil: starkSigil, words: "Winter is coming")

    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCharacterExistence()  {

        let ned = Person(name: "Eddard", alias: "Ned", house: starkHouse)
        XCTAssertNotNil(ned)
        let arya = Person(name: "Arya", house: starkHouse)
        XCTAssertNotNil(arya)
    }
    
    
}
