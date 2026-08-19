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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.19.0/lwkFFI.xcframework.zip", checksum: "1f52f0dc6d34089e95a55e793822b8601cbb1893fcae34637ccee1eb06131eea"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
