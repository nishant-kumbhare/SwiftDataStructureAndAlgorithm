//
//  DSQueueTest.swift
//  DSQueuesAndStackTests
//
//  Created by Nishant Kumbhare on 11/10/19.
//  Copyright © 2019 Nishant Kumbhare. All rights reserved.
//

import XCTest

class DSQueueTest: XCTestCase {

    var queue: DSQueue = DSQueue<Int>()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        queue.enqueue(1)
        queue.enqueue(2)
        queue.enqueue(3)
        queue.enqueue(4)
    }
    
    func testInit() {
          let array = [1, 2, 3, 4]
          XCTAssertEqual(queue, DSQueue(array))
    }
    
    func testPeak() {
        XCTAssertEqual(queue.peak(), 1)
    }
    
    func testEnqueue() {
        XCTAssertEqual(queue.description, "1 2 3 4")
    }
    
    func testDequeue() {
        XCTAssertEqual(queue.dequeue(), 1)
    }
    
    func testIsEmptyFalse() {
        XCTAssertFalse(queue.isEmpty)
    }
    
    func testIsEmptyTrue() {
        queue.dequeue()
        queue.dequeue()
        queue.dequeue()
        queue.dequeue()
        XCTAssertTrue(queue.isEmpty)
    }
    
    func testDequeueNext() {
        queue.dequeue()
        queue.dequeue()
        XCTAssertEqual(queue.dequeue(), 3)
        queue.dequeue()
        XCTAssertTrue(queue.isEmpty)
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
