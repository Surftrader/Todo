//
//  TodoUITests.swift
//  TodoUITests
//
//  Created by Sergiy Poddubka on 27.03.18.
//  Copyright © 2018 Sergiy Poddubka. All rights reserved.
//

import XCTest

class TodoUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()

        continueAfterFailure = false

        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
    }
}
