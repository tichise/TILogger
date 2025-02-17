//
//  TILogger.swift

import Foundation

public class TILogger {

  public static let shared = TILogger()

  private var prefix = "TILogger"
  private var dateFormat = "yyyy/MM/dd HH:mm:ss"
  private var logOutputType: LogOutputType = .console

  public init(prefix: String = "TILogger") {
    self.prefix = prefix
  }

  public func setPrefix(_ prefix: String) -> Self {
    self.prefix = prefix

    return self
  }

  public func setDateFormat(_ dateFormat: String) -> Self {
    self.dateFormat = dateFormat

    return self
  }

  public func verbose(
    _ message: Any, file: String = #file, function: String = #function, line: Int = #line
  ) {
    outputLog(logLevel: .verbose, message: message, file: file, function: function, line: line)
  }

  public func debug(
    _ message: Any, file: String = #file, function: String = #function, line: Int = #line
  ) {
    outputLog(logLevel: .debug, message: message, file: file, function: function, line: line)
  }

  public func info(
    _ message: Any, file: String = #file, function: String = #function, line: Int = #line
  ) {
    outputLog(logLevel: .info, message: message, file: file, function: function, line: line)
  }

  public func warning(
    _ message: Any, file: String = #file, function: String = #function, line: Int = #line
  ) {
    outputLog(logLevel: .warning, message: message, file: file, function: function, line: line)
  }

  public func error(
    _ message: Any, file: String = #file, function: String = #function, line: Int = #line
  ) {
    outputLog(logLevel: .error, message: message, file: file, function: function, line: line)
  }

  func outputLog(logLevel: LogLevel, message: Any, file: String, function: String, line: Int) {
    #if DEBUG

      switch logOutputType {
      case .console:
        printToConsole(
          logLevel: logLevel, message: message, file: file, function: function, line: line)
      }

    #endif
  }

  func printToConsole(logLevel: LogLevel, message: Any, file: String, function: String, line: Int) {

    let fileComponents = file.components(separatedBy: "/")
    var file = fileComponents.last ?? ""
    if let range = file.range(of: ".swift") {
      file.replaceSubrange(range, with: "")
    }

    let codePosition = file + " #" + String(line) + " " + function

    // Xcodeのコンソールに出力
    let logHeader = dateString + " " + prefix + " " + logLevel.rawValue + " " + codePosition + " - "

    print(logHeader, terminator: "")
    print(message)
  }

  enum LogLevel: String {
    case verbose = "💜 VERBOSE"
    case debug = "💚 DEBUG"
    case info = "💙 INFO"
    case warning = "💛 WARNING"
    case error = "❤️ ERROR"
  }

  enum LogOutputType {
    case console
  }

  var dateString: String {
    let date = Date()
    let formatter = DateFormatter()
    formatter.dateFormat = dateFormat
    return formatter.string(from: date)
  }

  public static func verbose(
    _ message: Any, file: String = #file, function: String = #function, line: Int = #line
  ) {
    shared.verbose(message, file: file, function: function, line: line)
  }

  public static func debug(
    _ message: Any, file: String = #file, function: String = #function, line: Int = #line
  ) {
    shared.debug(message, file: file, function: function, line: line)
  }

  public static func info(
    _ message: Any, file: String = #file, function: String = #function, line: Int = #line
  ) {
    shared.info(message, file: file, function: function, line: line)
  }

  public static func warning(
    _ message: Any, file: String = #file, function: String = #function, line: Int = #line
  ) {
    shared.warning(message, file: file, function: function, line: line)
  }

  public static func error(
    _ message: Any, file: String = #file, function: String = #function, line: Int = #line
  ) {
    shared.error(message, file: file, function: function, line: line)
  }

  public static func setPrefix(_ prefix: String) {
    shared.setPrefix(prefix)
  }
}
