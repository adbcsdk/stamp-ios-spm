// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StampSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "StampSDK",
            targets: ["StampSDK"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "StampSDK",
            dependencies: ["StampSDKBF"],
            resources: [.copy("PrivacyInfo.xcprivacy")]),
        .binaryTarget(
            name: "StampSDKBF",
            path: "Framework/StampSDKBF.xcframework"),
    ]
)
