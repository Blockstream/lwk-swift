// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "lwk_bindings",
    platforms: [
        .macOS(.v12),
        .iOS(.v13),
    ],
    products: [
        .library(name: "LiquidWalletKit", targets: ["lwkFFI", "LiquidWalletKit"]),
    ],
    targets: [
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.9.0/lwkFFI.xcframework.zip", checksum: "8225cf691c3753dfe7120c5fc1074d202764cd98570521800daef60180cc7b5f"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
