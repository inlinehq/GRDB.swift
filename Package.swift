// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GRDB",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
    ],
    products: [
        .library(name: "GRDB", targets: ["GRDB", "_GRDBDummy"]),
    ],
    targets: [
        .binaryTarget(
            name: "GRDB",
            url: "https://github.com/inlinehq/GRDB.swift/releases/download//GRDB.xcframework.zip",
            checksum: "214cead013b4ba79ee0f1ff1251fbe06b6d6115729149be4b9f522711848132c"
        ),
        .target(name: "_GRDBDummy")
    ]
)
