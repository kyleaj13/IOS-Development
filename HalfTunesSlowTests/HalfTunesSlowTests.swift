//
//  HalfTunesSlowTests.swift
//  HalfTunesSlowTests
//
//  Created by Jamil Nawaz on 27/03/2018.
//  Copyright © 2018 Ray Wenderlich. All rights reserved.
//

import XCTest
@testable import HalfTunes
class HalfTunesSlowTests: XCTestCase {
    var sessionUnderTest: URLSession!
    override func setUp() {
        super.setUp()
        sessionUnderTest = URLSession(configuration: URLSessionConfiguration.default)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sessionUnderTest = nil
        super.tearDown()
    }
    
    func testValidCallToiTunesGetsHTTPStatusCode200() {
        let url = URL(string:"https://itunes.apple.com/search?media=music&entity=song&term=abba")
        let promise = expectation(description: "Status Code: 200")
        let dataTask = sessionUnderTest.dataTask(with: url!)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
