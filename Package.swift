// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "lwk_bindings",
    platforms: [
        .macOS(.v12),
        .iOS(.v11),
    ],
    products: [
        .library(name: "LiquidWalletKit", targets: ["lwkFFI", "LiquidWalletKit"]),
    ],
    targets: [
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/test/lwkFFI.xcframework.zip", checksum: "e03c6f5bf9366a4752ebe8c2d0704638619da048b0c298ec94b78c19cb6019cd"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
