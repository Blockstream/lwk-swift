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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/blockstream/lwk-swift/releases/download/0.15.0/lwkFFI.xcframework.zip", checksum: "ac79d4f5d868124ed501573d719850c9e5ce0a8014408a5f53bcea8de1498098"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
