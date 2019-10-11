//
//  DSStackTest.swift
//  DSQueuesAndStackTests
//
//  Created by Nishant Kumbhare on 10/10/19.
//  Copyright © 2019 Nishant Kumbhare. All rights reserved.
//

import XCTest

class DSStackTest: XCTestCase {

    var stack: DSStack = DSStack<Int>()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        stack.push(1)
        stack.push(2)
        stack.push(3)
        stack.push(4)
    }
    
    func testInit() {
        let inputArray = [1, 2, 3, 4]
        XCTAssertEqual(stack, DSStack(inputArray))
    }
    
    func testPush() {
        XCTAssertEqual(stack.description, "1 2 3 4")
    }
    
    func testPop() {
        XCTAssertEqual(stack.pop(), 4)
    }
    
    func testPeak() {
        XCTAssertEqual(stack.peak(), 4)
    }
    
    func testIsEmptyFalse() {
        XCTAssertFalse(stack.isEmpty)
    }
    
    func testIsEmptyTrue() {
        stack.pop()
        stack.pop()
        stack.pop()
        stack.pop()
        XCTAssertTrue(stack.isEmpty)
    }

    func testArrayLiteral() {
      let stack: DSStack = ["blueberry", "plain", "potato"]
      XCTAssertEqual(stack, ["blueberry", "plain", "potato"])
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
