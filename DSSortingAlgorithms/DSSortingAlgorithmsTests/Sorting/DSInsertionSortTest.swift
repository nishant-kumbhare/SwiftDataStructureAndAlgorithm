//
//  DSInsertionSortTest.swift
//  DSSortingAlgorithmsTests
//
//  Created by Nishant Kumbhare on 02/10/19.
//  Copyright © 2019 NishantKumbhare. All rights reserved.
//

import XCTest

class DSInsertionSortTest: XCTestCase {

    var inputArray = [5, 2, 6, 1, 55, 22, 44, 88, 4]
    let sortedArray = [1, 2, 4, 5, 6, 22, 44, 55, 88]
    let reverseArray = [88, 55, 44, 22, 6, 5, 4, 2, 1]
    
    let inputFloatArray = [5.2, 2.1, 6.1, 1.2, 55.3, 22.1, 44.3, 55.1, 55.9]
    let sortedFloatArray = [1.2, 2.1, 5.2, 6.1, 22.1, 44.3, 55.1, 55.3, 55.9]
    
    let insertionSort = DSInsertionSort()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testInsertionSortSuccess() {
        insertionSort.sort(&inputArray)
        XCTAssertEqual(inputArray, sortedArray)
    }
    
    func testInsertionSortForReturnTypeSuccess() {
        let results = insertionSort.sort(inputFloatArray)
        XCTAssertEqual(results, sortedFloatArray)
    }

    func testReverseInsertionSortSuccess() {

        let results = insertionSort.reverse(inputArray)
        XCTAssertEqual(results, reverseArray)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
