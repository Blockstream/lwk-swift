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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.17.0/lwkFFI.xcframework.zip", checksum: "d1bc135c3e040b0f611ee544a2e579ee6fc6e35dd23b2853a9469d5b1a6e073c"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
