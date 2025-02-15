import XCTest

@testable import TILogger

final class TILoggerTests: XCTestCase {

  func testExample() {
    TILogger().setPrefix("").verbose("test")

    TILogger().setPrefix("log").debug("test")

    TILogger().setPrefix("TILogger").setDateFormat("yyyy/MM/dd HH:mm:ss").info("test")

    TILogger().setPrefix("TILogger").setDateFormat("HH:mm:ss").info("test")

    TILogger().warning("test")

    TILogger().error("test")

    TILogger().verbose(2333)
  }

  func testStaticMethods() {
    // Static methods
    TILogger.verbose("static verbose test")
    TILogger.debug("static debug test")
    TILogger.info("static info test")
    TILogger.warning("static warning test")
    TILogger.error("static error test")

    // Ensure shared instance maintains settings
    TILogger.shared.setPrefix("CustomPrefix")
    TILogger.info("test with custom prefix")

    // Test both static and instance methods work together
    let logger = TILogger()
    logger.setPrefix("InstancePrefix")

    // These should have different prefixes
    TILogger.info("static method with CustomPrefix")
    logger.info("instance method with InstancePrefix")
  }
}
