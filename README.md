### TILogger ![CocoaPods Version](https://img.shields.io/cocoapods/v/TILogger.svg?style=flat) ![Platform](https://img.shields.io/cocoapods/p/TILogger.svg?style=flat) ![License](https://img.shields.io/cocoapods/l/TILogger.svg?style=flat)

TILogger is a lightweight, flexible logging solution for Swift applications. It provides both instance-based and static logging methods with customizable formatting options.

### Features

- 🚀 **Simple & Lightweight**: Easy to integrate and use
- 🎨 **Customizable**: Configure prefix and date format to match your needs
- 🔄 **Flexible Usage**: Both instance-based and static methods available
- 💎 **Beautiful Output**: Emoji-based log levels for better visibility
- 🏃 **Method Chaining**: Fluent interface for configuration
- 📱 **DEBUG Mode Only**: Logs only appear in debug builds for better production performance

### Examples

#### Instance-based Usage

```swift
// Basic usage
TILogger().verbose("test")
TILogger().debug("test")
TILogger().info("test")
TILogger().warning("test")
TILogger().error("test")

// With custom prefix
TILogger().setPrefix("log").debug("test")

// With custom date format
TILogger().setPrefix("TILogger")
         .setDateFormat("yyyy/MM/dd HH:mm:ss")
         .info("test")

// Without prefix
TILogger().setPrefix("").verbose("test")

// Logging various types
TILogger().verbose(2333)  // Numbers
```

#### Static Usage (New! 🎉)

```swift
// Quick static methods
TILogger.verbose("logging made easy")
TILogger.debug("debugging in progress")
TILogger.info("useful information")
TILogger.warning("warning message")
TILogger.error("error occurred")

// Using shared instance
TILogger.shared.setPrefix("CustomPrefix")
TILogger.info("configured through shared instance")
```

### Output Format

```
2024/03/15 12:34:56 TILogger 💜 VERBOSE ViewController #123 viewDidLoad - Your log message
```

Format components:
- Date/Time (customizable format)
- Prefix (customizable)
- Log Level (with emoji)
- File name
- Line number
- Function name
- Log message

### Log Levels

- 💜 VERBOSE
- 💚 DEBUG
- 💙 INFO
- 💛 WARNING
- ❤️ ERROR

### Installation

#### CocoaPods

```ruby
pod 'TILogger'
```

#### Swift Package Manager

Add the following to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/your-repo/TILogger.git", from: "1.0.0")
]
```

### License

TILogger is available under the MIT license.
