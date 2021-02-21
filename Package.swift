// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TILogger",
    platforms: [.iOS(.v10),
                .watchOS(.v3)],
    products: [
        .library(name: "TILogger", targets: ["TILogger"])
    ],
    dependencies: [],
    targets: [
        .target(name: "TILogger", path: "Sources")
    ],
    swiftLanguageVersions: [.v5]
)
