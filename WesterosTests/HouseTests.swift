//
//  HouseTests.swift
//  WesterosTests
//
//  Created by Irma Blanco on 14/02/2018.
//  Copyright © 2018 Irma Blanco. All rights reserved.
//

import XCTest
@testable import Westeros

class HouseTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
       super.tearDown()
    }
    
    func testHouseExistence() {
        let starkSigil = Sigil(image: UIImage(), description: "Direwolf")
        let stark = House(name: "Stark", sigil: starkSigil, words: "Winter is coming")
        XCTAssertNotNil(stark)
    }
    
    func testSigilExistence(){
        let starkSigil = Sigil(image: UIImage(), description: "Direwolf")
        XCTAssertNotNil(starkSigil)
        
        let lannisterSigil = Sigil(image: UIImage(), description: "Lion rampant")
        XCTAssertNotNil(lannisterSigil)
    }
    
}
