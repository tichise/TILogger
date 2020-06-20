//
//  TILogger.swift

import Foundation

public class TILogger {

    public init() {
    }

    public func verbose(message: Any, file: String = #file, function: String = #function, line: Int = #line) {
        printToConsole(logLevel: .verbose, message: message, file: file, function: function, line: line)
    }

    public func debug(message: Any, file: String = #file, function: String = #function, line: Int = #line) {
        printToConsole(logLevel: .debug, message: message, file: file, function: function, line: line)
    }

    public func info(message: Any, file: String = #file, function: String = #function, line: Int = #line) {
        printToConsole(logLevel: .info, message: message, file: file, function: function, line: line)
    }

    public func warning(message: Any, file: String = #file, function: String = #function, line: Int = #line) {
        printToConsole(logLevel: .warning, message: message, file: file, function: function, line: line)
    }
    
    public func error(message: Any, file: String = #file, function: String = #function, line: Int = #line) {
        printToConsole(logLevel: .error, message: message, file: file, function: function, line: line)
    }
    
    func printToConsole(logLevel: LogLevel, message: Any, file: String, function: String, line: Int) {
        #if DEBUG
        
        let fileComponents = file.components(separatedBy: "/")
        var file = fileComponents.last ?? ""
        if let range = file.range(of: ".swift") {
            file.replaceSubrange(range, with: "")
        }

        let codePosition = file + " #" + String(line) + " " + function

        // Xcodeのコンソールに出力
        let logHeader = dateString + " Logger"+" "+logLevel.rawValue+" "+codePosition+" - "
        
        print(logHeader, terminator: "")
        print(message)
        
        #endif
    }
    
    enum LogLevel: String {
        case verbose = "💜 VERBOSE"
        case debug = "💚 DEBUG"
        case info = "💙 INFO"
        case warning = "💛 WARNING"
        case error = "❤️ ERROR"
    }

    var dateString: String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
        return formatter.string(from: date)
    }
}
