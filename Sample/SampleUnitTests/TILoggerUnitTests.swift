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
        TILogger().setPrefix("").verbose("test")
        TILogger().setPrefix("log").debug("test")
        TILogger().setPrefix("TILogger").setDateFormat("yyyy/MM/dd HH:mm:ss").info("test")
        TILogger().setPrefix("TILogger").setDateFormat( "HH:mm:ss").info("test")
        TILogger().warning("test")
        TILogger().error("test")
        TILogger().verbose(2333)
    }
}
