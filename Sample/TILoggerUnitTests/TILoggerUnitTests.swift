//
//  TILoggerUnitTests.swift
//

import XCTest
@testable import Sample
import TILogger

class TILoggerUnitTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
        TILogger().verbose(message: "test")
        TILogger().debug(message: "test")
        TILogger().info(message: "test")
        TILogger().warning(message: "test")
        TILogger().error(message: "test")
    }
}
