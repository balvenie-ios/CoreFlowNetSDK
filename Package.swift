// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "2.0.2"
let checksum = ""

let package = Package(
    name: "CoreFlowNet",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "CoreFlowNet", targets: ["CoreFlowNetXCFramework"]),
    ],
    targets: [
        .binaryTarget(
            name: "CoreFlowNetXCFramework",
            url: "https://github.com/balvenie-ios/CoreFlowNet/releases/download/\(version)/CoreFlowNet.xcframework.zip",
            checksum: checksum
        ),
    ]
)
