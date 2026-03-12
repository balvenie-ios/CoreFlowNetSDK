// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "2.0.2"
let checksum = ""

let package = Package(
    name: "CoreFlowNetSDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "CoreFlowNetSDK", targets: ["CoreFlowNetSDKXCFramework"]),
    ],
    targets: [
        .binaryTarget(
            name: "CoreFlowNetSDKXCFramework",
            url: "https://github.com/balvenie-ios/CoreFlowNetSDK/releases/download/\(version)/CoreFlowNetSDK.xcframework.zip",
            checksum: checksum
        ),
    ]
)
