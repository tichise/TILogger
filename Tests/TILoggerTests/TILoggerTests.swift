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

    TILogger.info("test with custom prefix")

    TILogger.info("static method with CustomPrefix")
    TILogger.info("instance method with InstancePrefix")

    TILogger.info("static method with CustomPrefix")
    TILogger.info("instance method with InstancePrefix")
  }
}
