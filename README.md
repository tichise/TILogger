### TILogger ![CocoaPods Version](https://img.shields.io/cocoapods/v/TILogger.svg?style=flat) ![Platform](https://img.shields.io/cocoapods/p/TILogger.svg?style=flat) ![License](https://img.shields.io/cocoapods/l/TILogger.svg?style=flat)

TILogger is a simple logger for swift.

### Examples

#### Swift

```html
TILogger().setPrefix("").verbose("test")

TILogger().setPrefix("log").debug("test")

TILogger().setPrefix("TILogger").setDateFormat("yyyy/MM/dd HH:mm:ss").info("test")

TILogger().setPrefix("TILogger").setDateFormat( "HH:mm:ss").info("test")

TILogger().warning("test")

TILogger().error("test")

TILogger().verbose(2333)
```
